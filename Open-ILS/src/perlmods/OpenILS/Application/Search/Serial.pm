package OpenILS::Application::Search::Serial;
use base qw/OpenILS::Application/;
use strict; use warnings;


use OpenSRF::Utils::JSON;
use OpenILS::Utils::Fieldmapper;
use OpenILS::Utils::MFHDParser;
use OpenSRF::Utils::SettingsClient;
use OpenILS::Utils::CStoreEditor q/:funcs/;
use OpenSRF::Utils::Cache;
use Encode;

use OpenSRF::Utils::Logger qw/:logger/;

use Data::Dumper;

use OpenSRF::Utils::JSON;

use Time::HiRes qw(time);
use OpenSRF::EX qw(:try);
use Digest::MD5 qw(md5_hex);

use XML::LibXML;
use XML::LibXSLT;

use OpenILS::Const qw/:const/;

use OpenILS::Application::AppUtils;
my $apputils = "OpenILS::Application::AppUtils";
my $U = $apputils;

my $pfx = "open-ils.search_";

=over

=item * mfhd_to_hash

=back

Takes an MFHD record ID and returns a hash of holdings statements

=cut

sub mfhd_to_hash {
	my ($self, $client, $id) = @_;
	
	my $session = OpenSRF::AppSession->create("open-ils.cstore");
	my $request = $session->request(
			"open-ils.cstore.direct.serial.record_entry.retrieve", $id )->gather(1);

	my $u = OpenILS::Utils::MFHDParser->new();
	my $mfhd_hash = $u->generate_svr( $request->id, $request->marc, $request->owning_lib );

	$session->disconnect();
	return $mfhd_hash;
}

__PACKAGE__->register_method(
	method	=> "mfhd_to_hash",
	api_name	=> "open-ils.search.serial.record.mfhd.retrieve",
	argc		=> 1, 
	note		=> "Given a serial record ID, return MFHD holdings"
);

=over

=item * bib_to_mfhd_hash 

=back

Given a bib record ID, returns a hash of holdings statements

=cut

sub bib_to_mfhd_hash {
	my ($self, $client, $bib) = @_;
	
	my $mfhd_hash;

	# XXX perhaps this? --miker
#	my $e = OpenILS::Utils::CStoreEditor->new();
#	my $mfhd = $e->search_serial_record_entry({ record => $bib });
#	return $u->generate_svr( $mfhd->[0] ) if (ref $mfhd);
#	return undef;

	my @mfhd = $U->cstorereq( "open-ils.cstore.json_query.atomic", {
		select  => { sre => 'marc' },
		from    => 'sre',
		where   => { record => $bib, deleted => 'f' },
		distinct => 1
	});
	
	if (!@mfhd or scalar(@mfhd) == 0) {
		return undef;
	}

	my $u = OpenILS::Utils::MFHDParser->new();
	$mfhd_hash = $u->generate_svr( $mfhd[0][0]->{id}, $mfhd[0][0]->{marc}, $mfhd[0][0]->{owning_lib} );

	return $mfhd_hash;
}

__PACKAGE__->register_method(
	method	=> "bib_to_mfhd_hash",
	api_name	=> "open-ils.search.serial.record.bib_to_mfhd.retrieve",
	argc		=> 1, 
	note		=> "Given a bibliographic record ID, return MFHD holdings"
);

sub bib_to_mfhd {
	my ($self, $client, $bib) = @_;
	
	my $mfhd;

	my $e = OpenILS::Utils::CStoreEditor->new();
	my $serials = $e->search_serial_record_entry({ record => $bib, deleted => 'f' });
	if (!ref $serials) {
		return undef;
	}

	my $u = OpenILS::Utils::MFHDParser->new();
	foreach (@$serials) {
		push(@$mfhd, $u->generate_svr($_->id, $_->marc, $_->owning_lib));
	}

	return $mfhd;
}

__PACKAGE__->register_method(
	method	=> "bib_to_mfhd",
	api_name	=> "open-ils.search.serial.record.bib.retrieve",
	argc		=> 1, 
	note		=> "Given a bibliographic record ID, return MFHD holdings"
);

1;
