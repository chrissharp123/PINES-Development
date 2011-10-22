-- View: reporter.classic_current_billing_summary

-- DROP VIEW reporter.classic_current_billing_summary;

CREATE OR REPLACE VIEW reporter.classic_current_billing_summary AS 
 SELECT x.id, x.usr, bl.shortname AS billing_location_shortname, bl.name AS billing_location_name, x.billing_location, c.barcode, u.home_ou AS usr_home_ou, ul.shortname AS usr_home_ou_shortname, ul.name AS usr_home_ou_name, x.xact_start, x.xact_finish, x.xact_type, x.total_paid, x.total_owed, x.balance_owed, x.last_payment_ts, x.last_payment_note, x.last_payment_type, x.last_billing_ts, x.last_billing_note, x.last_billing_type, paddr.county AS patron_county, paddr.city AS patron_city, paddr.post_code AS patron_zip, g.name AS profile_group, dem.general_division AS demographic_general_division
   FROM money.open_billable_xact_summary x
   JOIN actor.org_unit bl ON x.billing_location = bl.id
   JOIN actor.usr u ON u.id = x.usr
   JOIN actor.org_unit ul ON u.home_ou = ul.id
   JOIN actor.card c ON u.card = c.id
   JOIN permission.grp_tree g ON u.profile = g.id
   JOIN reporter.demographic dem ON dem.id = u.id
   JOIN actor.usr_address paddr ON paddr.id = u.billing_address;

ALTER TABLE reporter.classic_current_billing_summary OWNER TO postgres;
GRANT ALL ON TABLE reporter.classic_current_billing_summary TO postgres;
GRANT SELECT, REFERENCES, TRIGGER ON TABLE reporter.classic_current_billing_summary TO public;
