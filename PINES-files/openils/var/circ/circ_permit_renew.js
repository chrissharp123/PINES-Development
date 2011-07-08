function go() {

/* load the lib script */
load_lib('circ/circ_lib.js');
log_vars('circ_permit_renew');

log_info("permit_renew searching for potential holds for copy " + copy.barcode)
var hold = copy.fetchBestHold();
if( hold ) {
	log_info("hold found for renewal item, checking hold->usr..");
    log_info("hold = " + hold + "  hold.usr = " + hold.usr + "   patron.id = " + patron.id);
	if( hold.usr != patron.id ) {
        log_info("## Before the push.");
		result.events.push('COPY_NEEDED_FOR_HOLD');
        log_info("## After the push.");
    }
}


} go();
