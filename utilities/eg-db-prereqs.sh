#!/bin/bash

DEBS="gcc libxml-libxml-perl libxml-libxslt-perl"

CPAN_PMS="
Business::ISBN
JSON::XS
Library::CallNumber::LC
MARC::Record
MARC::File::XML
UUID::Tiny";

apt-get update && apt-get -y install $DEBS;

for i in $CPAN_PMS;
	do cpan $i || {
		echo "Could not install $i";
		exit 1;
	}
done;
