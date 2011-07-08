function go(){

load_lib('JSON_v1.js');
load_lib('circ/circ_item_config.js');
log_vars('circ_duration');


/* treat pre-cat copies like vanilla books */
if( isTrue(isPrecat) ) {
	log_info("pre-cat copy getting duration defaults...");
	result.durationRule			= '14_days_2_renew';
	result.recurringFinesRule	= '10_cent_per_day';
	result.maxFine					= 'overdue_mid';
	checkDurationExceptions();
	return;
}


/* grab the config from the config script */
var config = getItemConfig();
var itemForm	= (marcXMLDoc) ? extractFixedField(marcXMLDoc,'Form') : "";


/* ----------------------------------------------------------------------------- 
	Now set the rule values based on the config.  If there is no configured info
	on this copy, fall back on defaults.
	----------------------------------------------------------------------------- */
if( config ) {

	log_debug("circ_duration found a config for the copy");
	result.durationRule			= config.durationRule;
	result.recurringFinesRule	= config.recurringFinesRule;
	result.maxFine					= config.maxFine;

} else {

	result.durationRule			= '14_days_2_renew';
	result.recurringFinesRule	= "10_cent_per_day";
	result.maxFine					= "overdue_mid";
}



/* ----------------------------------------------------------------------------- 
	Add custom rules here.  
	----------------------------------------------------------------------------- */

var circMod		= (copy.circ_modifier) ? copy.circ_modifier.toLowerCase() : '';

if( isOrgDescendent('STATELIB', copy.circ_lib.id) ) {
	if( circMod == 'book' )
		result.durationRule = '35_days_1_renew';
	if(isTrue(copy.ref))
		result.durationRule	= '14_days_2_renew';

} else if( isOrgDescendent('NCLS', copy.circ_lib.id) && ( circMod == 'dvd' || circMod == 'video' ) ) 
	result.recurringFinesRule	= '10_cent_per_day';


checkDurationExceptions();

log_info('final duration results: ' + result.durationRule + ' : ' + result.recurringFinesRule + ' : ' + result.maxFine );

} go();



function checkDurationExceptions() {
	log_debug("Checking duration rule exceptions for profile  "+patronProfile);

	if(	isGroupDescendant('Staff', patronProfile) || 
			isGroupDescendant('Trustee', patronProfile) ||
            isGroupDescendant('StaffNoPerm', patronProfile) ||
			isGroupDescendant('Outreach', patronProfile) ) {

		result.recurringFinesRule	= "staff";
		result.maxFine					= "staff";
	}

	if( isGroupDescendant('Outreach', patronProfile) ) {
		log_info("Outreach user found, setting duration to 2 months");
		result.durationRule = '2_months_2_renew';
	}
}

