#!/usr/bin/perl
# usage: export SELECT ill_address, holds_address, mailing_address, billing_address, id FROM actor.org_unit into a CSV file
# use vim to :%s/''/NULL/g and possibly remove lines with NULL addresses all around
# run this file against the CSV, substituting your file's name for 'update_addresses.csv'

use warnings;
use strict;
use Text::CSV;

my $file = 'update_addresses.csv';

my $csv = Text::CSV->new();

open (CSV, "<", $file) or die $!;

while (<CSV>) {
	next if ($. == 1);
	if ($csv->parse($_)) {
		my @columns = $csv->fields();
		print "UPDATE actor.org unit SET ill_address = $columns[0], holds_address = $columns[1], mailing_address = $columns[2], billing_address = $columns[3] WHERE id = $columns[4];\n";
	} else {
		 my $err = $csv->error_input;
		print "Failed to parse line: $err";
	}
}

close CSV;
