package OpenILS::WWW::Method;
use strict; use warnings;

use Apache2::Log;
use Apache2::Const -compile => qw(OK REDIRECT :log);
use APR::Const    -compile => qw(:error SUCCESS);
use Apache2::RequestRec ();
use Apache2::RequestIO ();
use Apache2::RequestUtil;

use OpenSRF::Utils::JSON;

use CGI ();

use OpenSRF::EX qw(:try);
use OpenSRF::System;

my %session_hash;

use constant MAX_SESSION_REQUESTS => 20;

sub handler {

	use Data::Dumper;


	my $apache = shift;
	my $cgi = CGI->new( $apache );

	print "Content-type: text/plain; charset=utf-8\n\n";
	#print $cgi->header;

	my @p = $cgi->param();
	warn "Params: " . Dumper(\@p);

	my $method = $cgi->param("method");
	my $service = $cgi->param("service");

	my $err = undef;

	if( ! $service || ! $method ) {
		$err = { 
			is_err	=> 1, 
			err_msg	=> "Service name and method name required to fulfil request",
		};
	}

	if($err) {
		print  OpenSRF::Utils::JSON->perl2JSON($err);
		return Apache2::Const::OK;
	}

	my @param_array;
	my %param_hash;

	warn "here\n";

	if(defined($cgi->param("param"))) {
		for my $param ( $cgi->param("param")) {
			push( @param_array, OpenSRF::Utils::JSON->JSON2perl( $param ));
		}
	} else {
		for my $param ($cgi->param()) {
			$param_hash{$param} = OpenSRF::Utils::JSON->JSON2perl($cgi->param($param))
				unless( $param eq "method" or $param eq "service" );
		}
	}


	if( @param_array ) {
		perform_method($service, $method, @param_array);
	} else {
		perform_method($service, $method, %param_hash);
	}

	return Apache2::Const::OK;
}

sub child_init_handler {
	OpenSRF::System->bootstrap_client( 
		config_file => "SYSCONFDIR/opensrf_core.xml" );
}


sub perform_method {

	my ($service, $method, @params) = @_;

	warn "performing method $method for service $service with params @params\n";

	my $session;

	if($session_hash{$service} ) {

		$session = $session_hash{$service};
		$session->{web_count} += 1;

		if( $session->{web_count} > MAX_SESSION_REQUESTS) {
			$session->disconnect();
			$session->{web_count} = 1;
		}

	} else { 

		$session = OpenSRF::AppSession->create($service); 
		$session_hash{$service} = $session;
		$session->{web_count} = 1;

	}

	my $request = $session->request( $method, @params );

	my @results;
	while( my $response = $request->recv(20) ) {
		
		if( UNIVERSAL::isa( $response, "Error" )) {
			warn "Received exception: " . $response->stringify . "\n";
			my $err = { 
				is_err	=> 1, 
				err_msg	=> "Error Completing Request:\n " . 
					"Service: $service \nMethod: $method \nParams: @params \n" .
					$response->stringify() . "\n",
			};
			print OpenSRF::Utils::JSON->perl2JSON($err);
			$request->finish();
			return 0;
		}

		my $content = $response->content;
		push @results, $content;
	}


	if(!$request->complete) { 
		warn "ERROR Completing Request"; 
		my $err = { 
			is_err	=> 1, 
			err_msg	=> "Error Completing Request:\n ".
				"Service: $service \nMethod: $method \nParams: @params \n" .
				"request->complete test failed in OpenILS::Web::Method\n" 
		};
		print OpenSRF::Utils::JSON->perl2JSON($err); 
		$request->finish();
		return 0;
	}

	$request->finish();
	$session->finish();

	warn "Results: \n";
	warn Dumper \@results;

	print OpenSRF::Utils::JSON->perl2JSON( \@results );

	return 1;
}


1;
