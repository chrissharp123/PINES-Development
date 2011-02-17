-- add PINES language to actor.org_unit_type
UPDATE actor.org_unit_type SET opac_label = 'All PINES Libraries' WHERE id = 1;

-- the default sql seed values script sets the value of the PK id sequence at 100 - we need to reset it to 360 to accommodate existing PINES org ids
SELECT SETVAL('actor.org_unit_id_seq'::TEXT, 360);

-- edit 9 default ous to PINES values
UPDATE actor.org unit SET shortname = 'PINES', name = 'PINES' WHERE id = 1;
UPDATE actor.org unit SET parent_ou = 1, ou_type = 2, ill_address = NULL, holds_address = NULL, mailing_address = NULL, billing_address = NULL, shortname = 'MCCLS', name = 'Moultrie-Colquitt County Library' WHERE id = 2;
UPDATE actor.org unit SET parent_ou = 2, ou_type = 3, ill_address = 2, holds_address = 2, mailing_address = 2, billing_address = 2, shortname = 'MCCLS-HQ', name = 'Moultrie-Colquitt County Library' WHERE id = 3;
UPDATE actor.org unit SET parent_ou = 2, ou_type = 3, ill_address = 3, holds_address = 3, mailing_address = 3, billing_address = 3, shortname = 'MCCLS-DOE', name = 'Doerun Municipal Library' WHERE id = 4;
UPDATE actor.org unit SET parent_ou = 2, ou_type = 3, ill_address = 4, holds_address = 4, mailing_address = 4, billing_address = 4, shortname = 'MCCLS-BKM', name = 'Bookmobile' WHERE id = 5;
UPDATE actor.org unit SET parent_ou = 1, ou_type = 2, ill_address = NULL, holds_address = NULL, mailing_address = NULL, billing_address = NULL, shortname = 'ARL', name = 'Athens Regional Library System' WHERE id = 6;
UPDATE actor.org unit SET parent_ou = 6, ou_type = 3, ill_address = 5, holds_address = 5, mailing_address = 5, billing_address = 5, shortname = 'ARL-ATH', name = 'Athens-Clarke County Library' WHERE id = 7;
UPDATE actor.org unit SET parent_ou = 6, ou_type = 3, ill_address = 6, holds_address = 6, mailing_address = 6, billing_address = 6, shortname = 'ARL-WAT', name = 'Watkinsville/Oconee County Library' WHERE id = 8;
UPDATE actor.org unit SET parent_ou = 6, ou_type = 3, ill_address = 7, holds_address = 7, mailing_address = 7, billing_address = 7, shortname = 'ARL-BOG', name = 'Bogart Library' WHERE id = 9;

-- insert PINES org_units 

INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	10, 6, 3, 8, 8, 8, 8, 'ARL-LEX', 'Lexington/Oglethorpe County Library', 'oglethorpelibrary@yahoo.com', '706-743-8817', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	11, 6, 3, 9, 9, 9, 9, 'ARL-DAN', 'Danielsville/Madison County Library', 'madcolib@yahoo.com', '706-795-5597', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	12, 6, 3, 10, 10, 10, 10, 'ARL-WINT', 'Winterville Library', 'winterville@athenslibrary.org', '706-742-7735', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	13, 6, 3, 11, 11, 11, 11, 'ARL-LAV', 'Lavonia Carnegie Library', 'lavcarlib@hotmail.com', '706-356-4307', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	14, 6, 3, 12, 12, 12, 12, 'ARL-ROY', 'Royston Library', 'roypublib@hotmail.com', '706-245-6748', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	15, 6, 3, 13, 13, 13, 13, 'ARL-ENSAT', 'Sandy Creek ENSAT Resource Ctr.', 'athlib@yahoo.com', '706-613-3615', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	16, 6, 3, 14, 14, 14, 14, 'ARL-LYNDON', 'Lyndon House Art Resource Ctr.', 'athlib@yahoo.com', '706-613-3623', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	17, 6, 3, 15, 15, 15, 15, 'ARL-BKM', 'Bookmobile', NULL, '706-613-3650 ext.320', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	18, 6, 3, 16, 16, 16, 16, 'ARL-EAST', 'East Athens Community Resource Ctr.', 'lywright@athenslibrary.org', '706-613-3657', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	19, 6, 3, 17, 17, 17, 17, 'ARL-LAY', 'Lay Park Community Resource Ctr.', 'arllay@athenslibrary.org', '706-613-3667', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	20, 6, 3, 18, 18, 18, 18, 'ARL-PWOODS', 'Pinewoods North Community Learning Center', 'pinewoods@arlsmail.org', '706-613-3708', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	21, 1, 2, NULL, NULL, NULL, NULL, 'ECPL', 'Elbert County Public Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	22, 21, 3, 19, 19, 19, 19, 'ECPL-ECPL', 'Elbert County Public Library', 'pjohnson@elbertcountypl.org', '7062835375', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	23, 21, 3, 20, 20, 20, 20, 'ECPL-BWMN', 'Bowman Branch', 'pjohnson@elbertcountypl.org', '7062450705', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	24, 21, 3, 21, 21, 21, 21, 'ECPL-BKM', 'Bookmobile', NULL, '7062835375', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	25, 1, 2, NULL, NULL, NULL, NULL, 'SHRL', 'Sara Hightower Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	26, 25, 3, 22, 22, 22, 22, 'SHRL-RM', 'Rome Branch', 'scooley@romelibrary.org', '706-236-4601', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	27, 25, 3, 23, 23, 23, 23, 'SHRL-CS', 'Cave Spring Branch', 'shead@cavespringlibrary.org', '706-777-3346', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	28, 25, 3, 24, 24, 24, 24, 'SHRL-RK', 'Rockmart Branch', 'awheeler@rockmartlibrary.org', '770-684-3022', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	29, 25, 3, 25, 25, 25, 25, 'SHRL-CD', 'Cedartown Branch', 'scleveland@cedartownlibrary.org', '770-748-5644', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	30, 25, 3, NULL, NULL, NULL, NULL, 'SHRL-BK', 'Outreach Collection', 'scooley@romelibrary.org', NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	31, 1, 2, NULL, NULL, NULL, NULL, 'FBHCL', 'Fitzgerald-Ben Hill County Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	32, 31, 3, 26, 26, 26, 26, 'FBHCL-MAIN', 'Fitzgerald-Ben Hill County Library', 'circulation@fbhcl.org', '229-426-5080', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	33, 1, 2, NULL, NULL, NULL, NULL, 'DCPL', 'Dougherty County Public Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	34, 33, 3, 27, 27, 27, 27, 'DCPL-CEN', 'Central Branch', 'bass@docolib.org', '229-420-3200', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	35, 33, 3, 28, 28, 28, 28, 'DCPL-NW', 'Northwest Branch', 'barton@docolib.org', '229-420-3270', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	36, 33, 3, 29, 29, 29, 29, 'DCPL-TAL', 'Tallulah Branch', 'pettiford@docolib.org', '229-420-3250', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	37, 33, 3, 30, 30, 30, 30, 'DCPL-WT', 'Westtown Branch', 'neal@docolib.org', '229-420-3280', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	38, 33, 3, 31, 31, 31, 31, 'DCPL-SS', 'Southside Branch', 'henson@docolib.org', '229-420-3260', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	39, 1, 2, NULL, NULL, NULL, NULL, 'STRL', 'Statesboro Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	40, 39, 3, 32, 32, 32, 32, 'STRL-SBORO', 'Headquarters, Statesboro', 'reservessboro@srls.public.lib.ga.us', '912-764-1341', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	41, 39, 3, 33, 33, 33, 33, 'STRL-METT', 'L.C. Anderson Memorial Library, Candler County, Metter', 'reservesmett@srls.public.lib.ga.us', '912-685-2455', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	42, 39, 3, 312, 312, 312, 312, 'STRL-PEMB', 'Bryan County Library, Pembroke', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	43, 39, 3, 34, 34, 34, 34, 'STRL-RHILL', 'Bryan County Library, Richmond Hill', 'kateb@srls.public.lib.ga.us', '912-756-3580', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	44, 39, 3, 35, 35, 35, 35, 'STRL-SWAIN', 'Franklin Memorial Library, Emanuel County, Swainsboro', 'reservesswain@srls.public.lib.ga.us', '478-237-7791', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	45, 39, 3, 36, 36, 36, 36, 'STRL-CLAX', 'Evans County Library, Evans', 'reservesclax@srls.public.lib.ga.us', '912-739-1801', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	46, 1, 2, NULL, NULL, NULL, NULL, 'URRLS', 'Uncle Remus Regional Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	47, 46, 3, 37, 37, 37, 37, 'URRLS-GR', 'Greene County Public Library', 'greene @uncleremus.org', '706-453-7276', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	48, 46, 3, 38, 38, 38, 38, 'URRLS-HA', 'Hancock County Public Library', 'hancock@uncleremus.org', '706-444-5389', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	49, 46, 3, 39, 39, 39, 39, 'URRLS-JA', 'Jasper County Public Library', 'jasper@uncleremus.org', '706-468-6292', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	50, 46, 3, 40, 40, 40, 40, 'URRLS-MA', 'Morgan County Library', 'morgan@uncleremus.org', '706-342-1206', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	51, 46, 3, 41, 41, 41, 41, 'URRLS-MR', 'Monroe-Walton County Library', 'monroe@uncleremus.org', '770-267-4630', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	52, 46, 3, 42, 42, 42, 42, 'URRLS-OK', E'O\'Kelly Memorial Library', 'rick@uncleremus.org', '770-466-2895', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	53, 46, 3, 43, 43, 43, 43, 'URRLS-PU', 'Putnam County Public Library', 'putnam@uncleremus.org', '706-485-6768', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	54, 46, 3, 44, 44, 44, 44, 'URRLS-SC', 'Stanton Memorial Library', 'janet@uncleremus.org', '770-464-2444', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	55, 1, 2, NULL, NULL, NULL, NULL, 'TLLS', 'Twin Lakes Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	56, 55, 3, 45, 45, 45, 45, 'TLLS-MV', 'Mary Vinson Memorial Library', 'circulation@twinlakeslibrarysystem.org', '478-452-0677', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	57, 55, 3, 46, 46, 46, 46, 'TLLS-LS', 'Lake Sinclair Library', 'mail@twinlakeslibrarysystem.org', '478-452-6522', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	58, 1, 2, NULL, NULL, NULL, NULL, 'OKRL', 'Okefenokee Regional Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	59, 58, 3, 47, 47, 47, 47, 'OKRL-CLNCH', 'Clinch County Public Library', 'clinch31634@yahoo.com', '912-487-3200', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	60, 58, 3, 48, 48, 48, 48, 'OKRL-BACON', 'Alma-Bacon County Public Library', 'theressa_a@hotmail.com', '912-632-4710', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	61, 58, 3, 49, 49, 49, 49, 'OKRL-BLMEM', 'Blackshear Memorial Library', 'bunkleya@hotmail.com', '912-449-7040', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	62, 58, 3, 50, 50, 50, 50, 'OKRL-APPL', 'Appling County Public Library', 'alice_coleman@yahoo.com', '912-367-8103', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	63, 58, 3, 51, 51, 51, 51, 'OKRL-WWC', 'Waycross-Ware Co. Public Lib.', 'wx31501@yahoo.com', '912-287-4978', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	64, 58, 3, 52, 52, 52, 52, 'OKRL-BKM', 'Bookmobile', 'wx31501@yahoo.com', '912-287-4978', FALSE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	65, 1, 2, NULL, NULL, NULL, NULL, 'STATELIB', 'Georgia Public Library Service', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	66, 65, 3, 53, 53, 53, 53, 'STATELIB-L', 'Georgia State Library Collection', 'ehardy@georgialibraries.org', '404-235-7128', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	67, 65, 3, 54, 54, 54, 54, 'STATELIB-B', 'GLASS - Georgia Library for Accessible Services', 'ehardy@georgialibraries.org', '404-235-7128', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	68, 1, 2, NULL, NULL, NULL, NULL, 'TRRL', 'Three Rivers Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	69, 68, 3, 55, 55, 55, 55, 'TRRL-SAPLO', 'Hog Hammock Public Library', NULL, '912-267-1212', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	70, 68, 3, NULL, NULL, NULL, 316, 'TRRL-SSI', 'St. Simons Library', NULL, '912-638-8234', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	71, 68, 3, 56, 56, 56, 56, 'TRRL-BRANT', 'Brantley County Library', 'brantleyill@trrl.org', '912-462-5454', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	72, 68, 3, 57, 57, 57, 57, 'TRRL-CAMDN', 'Camden County Library', 'camdill@trrl.org', '912-729-3741', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	73, 68, 3, 58, 58, 58, 58, 'TRRL-CHARL', 'Charlton County Library', 'charill@trrl.org', '912-496-2041', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	74, 68, 3, 59, 59, 59, 59, 'TRRL-GLYNN', 'Brunswick-Glynn County Library', 'glynncirc@trrl.org', '912-267-1212', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	75, 68, 3, 60, 60, 60, 60, 'TRRL-LONG', 'Long County Library', 'mleggett@trrl.org:  pmaney@trrl.org', '912-545-2521', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	76, 68, 3, 61, 61, 61, 61, 'TRRL-MCINT', 'McIntosh County/Ida Hilton Library', 'cbrooks@trrl.org', '912-437-2124', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	77, 68, 3, 62, 62, 62, 62, 'TRRL-STMRY', E'St. Mary\'s Library', 'smpladm@trrl.org', '912-882-4800', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	78, 68, 3, 63, 63, 63, 63, 'TRRL-WAYNE', 'Wayne County Library', 'wayneill@trrl.org', '912-427-2500', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	79, 68, 3, 64, 64, 64, 64, 'TRRL-BKM', 'Bookmobile', 'jwendt@trrl.org', '912-267-1212', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	80, 1, 2, NULL, NULL, NULL, NULL, 'SJRLS', 'Screven-Jenkins Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	81, 80, 3, 65, 65, 65, 65, 'SJRLS-SCL', 'Screven County Library', 'scl@sjrls.org', '912 564-7526', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	82, 80, 3, 66, 66, 66, 66, 'SJRLS-JCML', 'Jenkins County Memorial Library', 'jcml@sjrls.org', '912 982-4244', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	83, 80, 3, 67, 67, 67, 67, 'SJRLS-BKM', 'Bookmobile', 'bgilbert@sjrls.org', '912 564-7526', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	84, 80, 3, 68, 68, 68, 68, 'SJRLS-JCES', 'Jenkins County Elementary School', 'jcml@sjrls.org', '912-564-7526', FALSE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	85, 1, 2, NULL, NULL, NULL, NULL, 'RML', 'Roddenbery Memorial Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	86, 85, 3, 69, 69, 69, 69, 'RML-MAIN', 'Roddenbery Memorial Library', 'circdesk@rmlibrary.org', '229-377-3632 ext. 112', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	87, 1, 2, NULL, NULL, NULL, NULL, 'PMRLS', 'Pine Mountain Regional Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	88, 87, 3, 70, 70, 70, 70, 'PMRLS-BPL', 'Butler Public Library', 'libraryb@pinemtnlibrary.org', '478-862-5428', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	89, 87, 3, 71, 71, 71, 71, 'PMRLS-HML', 'Hightower Memorial Library', 'libraryh@pinemtnlibrary.org', '706-647-8649', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	90, 87, 3, 72, 72, 72, 72, 'PMRLS-GPL', 'Greenville Area Public Library', 'libraryg@pinemtnlibrary.org', '706-672-4004', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	91, 87, 3, 73, 73, 73, 73, 'PMRLS-MPL', 'Manchester Public Library', 'librarym@pinemtnlibrary.org', '706-846-3851', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	92, 87, 3, 74, 74, 74, 74, 'PMRLS-RCL', 'Reynolds Community Library', 'libraryr@pinemtnlibrary.org', '478-847-3468', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	93, 87, 3, 75, 75, 75, 75, 'PMRLS-TCL', 'Talbot County Library', 'libraryt@pinemtnlibrary.org', '706-665-3134', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	94, 87, 3, 76, 76, 76, 76, 'PMRLS-EXT', 'Extension Services', 'bookmobe@pinemtnlibrary.org', '706-846-2186 Ext. 107', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	95, 87, 3, 77, 77, 77, 77, 'PMRLS-YPL', 'Yatesville Public Library', 'libraryy@pinemtnlibrary.org', '706-472-3048', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	96, 1, 2, NULL, NULL, NULL, NULL, 'MRLS', 'Mountain Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	97, 96, 3, 78, 78, 78, 78, 'MRLS-MRL', 'Mountain Regional Library', 'haymoret@mountainregionallibrary.org', '706-379-3732', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	98, 96, 3, 79, 79, 79, 79, 'MRLS-BKMB', 'Bookmobile', 'bookmobile@mountainregionallibrary.org', '706-781-7394 (cell)', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	99, 96, 3, 80, 80, 80, 80, 'MRLS-FCPL', 'Fannin County Public Library', 'fanninlibrary@mountainregionallibrary.org', '706-632-5263', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	100, 96, 3, 81, 81, 81, 81, 'MRLS-TCPL', 'Towns County Public Library', 'libraryt@mountainregionallibrary.org', '706-896-6169 FAX 706-896-2309', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	101, 96, 3, 82, 82, 82, 82, 'MRLS-UCPL', 'Union County Public Library', 'union@mountainregionallibrary.org', '706-745-7491', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	102, 1, 2, NULL, NULL, NULL, NULL, 'PPL', 'Peach Public Libraries', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	103, 102, 3, 83, 83, 83, 83, 'PPL-TPL', 'Thomas Public Library', 'frenchs@mail.peach.public.lib.ga.us', '478-825-1640', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	104, 102, 3, 84, 84, 84, 84, 'PPL-BPL', 'Byron Public Library', 'halbedels@mail.peach.public.lib.ga.us', '478-956-2200', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	105, 102, 3, 85, 85, 85, 85, 'PPL-LEC', 'Peach County Law Enforcement Center', 'matthewj@mail.peach.public.lib.ga.us', '4788251640', FALSE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	106, 1, 2, NULL, NULL, NULL, NULL, 'FRRLS', 'Flint River Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	107, 106, 3, 86, 86, 86, 86, 'FRRLS-GR', 'Griffin-Spalding County Library', 'gr-circ@frrls.net', '(770) 412-4770', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	108, 106, 3, 87, 87, 87, 87, 'FRRLS-JA', 'Jackson-Butts County Public Library', 'ja-circ@frrls.net', '(770) 775-7524', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	109, 106, 3, 88, 88, 88, 88, 'FRRLS-BA', 'Barnesville-Lamar County Library', 'ba-circ@frrls.net', '(770) 358-3270', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	110, 106, 3, 89, 89, 89, 89, 'FRRLS-FY', 'Monroe County Library', 'fy-circ@frrls.net', '(478) 994-7025', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	111, 106, 3, 90, 90, 90, 90, 'FRRLS-FA', 'Fayette County Public Library', 'scampbell@fayettecountyga.gov', '770-461-8841', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	112, 106, 3, 91, 91, 91, 91, 'FRRLS-PT', 'Peachtree City Library', 'rwatts@peachtree-city.org', '770-631-2520', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	113, 106, 3, 92, 92, 92, 92, 'FRRLS-ZE', 'J. Joel Edwards Public Library', 'ze-circ@frrls.net', '(770) 567-2014', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	114, 106, 3, 93, 93, 93, 93, 'FRRLS-TY', 'Tyrone Public Library', 'jdigby@frrls.net', '(770) 487-1565', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	115, 1, 2, NULL, NULL, NULL, NULL, 'LEE', 'Lee County Public Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	116, 115, 3, 94, 94, 94, 94, 'LEE-SMV', 'Smithville Branch', 'haler@leecountylibrary.org', '229-759-2369 before 3pm', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	117, 115, 3, 95, 95, 95, 95, 'LEE-LSB', 'Leesburg Branch', 'reference@leecountylibrary.org', '229-759-2369', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	118, 115, 3, 243, 243, 243, 243, 'LEE-RED', 'Redbone Branch', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	119, 1, 2, NULL, NULL, NULL, NULL, 'CHAT', 'Chattooga County Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	120, 119, 3, 96, 96, 96, 96, 'CHAT-TRION', 'Trion Public Library', 'bsimmons@chattoogacountylibrary.org', '706-734-7594', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	121, 119, 3, 97, 97, 97, 97, 'CHAT-SMRVL', 'Summerville Branch', 'chatrep@chattoogacountylibrary.org', '706-857-2553', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	122, 1, 2, NULL, NULL, NULL, NULL, 'ROCK', 'Conyers-Rockdale Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	123, 122, 3, 98, 98, 98, 98, 'ROCK-NG', 'Nancy Guinn Library', 'circdept@conyersrockdalelibrary.org', '770-388-5040', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	124, 1, 2, NULL, NULL, NULL, NULL, 'CLAYTN', 'Clayton County Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	125, 124, 3, 99, 99, 99, 99, 'CLAYTN-HQS', 'Headquarters Library', 'branchhq@claytonpl.org', '770-473-3850', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	126, 124, 3, 100, 100, 100, 100, 'CLAYTN-FOR', 'Forest Park Branch', 'branchfp@claytonpl.org', '404-366-0850', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	127, 124, 3, 101, 101, 101, 101, 'CLAYTN-JON', 'Jonesboro Branch', 'branchjo@claytonpl.org', '770-478-7120', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	128, 124, 3, 102, 102, 102, 102, 'CLAYTN-LOV', 'Lovejoy Branch', 'branchlj@claytonpl.org', '770-472-8129', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	129, 124, 3, 103, 103, 103, 103, 'CLAYTN-MOR', 'Morrow Branch', 'branchmo@claytonpl.org', '404-366-7749', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	130, 124, 3, 104, 104, 104, 104, 'CLAYTN-RIV', 'Riverdale Branch', 'branchri@claytonpl.org', '770-472-8100', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	131, 1, 2, NULL, NULL, NULL, NULL, 'SRL', 'Satilla Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	132, 131, 3, 105, 105, 105, 105, 'SRL-AMBR', 'Ambrose Public Library', 'ambrlib@srlsys.org', '912-359-2536', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	133, 131, 3, 106, 106, 106, 106, 'SRL-BKMO', 'Bookmobile', 'johnsonl@srlsys.org', '912-384-4667 ask for Lorrinda Johnson', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	134, 131, 3, 107, 107, 107, 107, 'SRL-BROX', 'Broxton Public Library', 'broxlib@srlsys.org', '912-359-3887', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	135, 131, 3, 108, 108, 108, 108, 'SRL-DOUG', 'Douglas-Coffee County Library', 'douglib@srlsys.org', '912-384-4667', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	136, 203, 3, 109, 109, 109, 109, 'OHOOP-JDHAZ', 'Hazlehurst-Jeff Davis Branch', 'jdhazlib@srlsys.org', '912-375-2386', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	137, 131, 3, 110, 110, 110, 110, 'SRL-NICH', 'Nicholls Public Library', 'nichlib@srlsys.org', '912-345-2534', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	138, 131, 3, 111, 111, 111, 111, 'SRL-PEAR', 'Pearson Public Library', 'pearlib@srlsys.org', '912-422-3500', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	139, 131, 3, 112, 112, 112, 112, 'SRL-WILLA', 'Willacoochee Public Library', 'willalib@srlsys.org', '912-534-5252', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	140, 1, 2, NULL, NULL, NULL, NULL, 'HCLS', 'Henry County Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	141, 140, 3, 113, 113, 113, 113, 'HCLS-LG', 'Locust Grove Public Library', 'bennettw@mail.henry.public.lib.ga.us', '770-954-2810', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	142, 140, 3, 114, 114, 114, 114, 'HCLS-MD', 'McDonough Public Library', 'westk@mail.henry.public.lib.ga.us', '770-954-2806', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	143, 140, 3, 115, 115, 115, 115, 'HCLS-ST', 'Cochran Public Library / Stockbridge', 'renaudc@mail.henry.public.lib.ga.us', '770-389-7896', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	144, 140, 3, 116, 116, 116, 116, 'HCLS-HA', 'Fortson Public Library / Hampton', 'brownj2@mail.henry.public.lib.ga.us', '770-288-7233', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	145, 1, 2, NULL, NULL, NULL, 319, 'NEG', 'Northeast Georgia Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	146, 145, 3, 117, 117, 117, 117, 'NEG-CLRKVL', 'Clarkesville-Habersham County Library', 'cclarkes@negeorgialibraries.org', '706-754-4413 x221', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	147, 145, 3, 118, 118, 118, 118, 'NEG-CORNEL', 'Cornelia-Habersham County Library', 'awiley@negeorgialibraries.org', '706-778-2635', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	148, 145, 3, 119, 119, 119, 119, 'NEG-CLVLND', 'White County Library - Cleveland Branch', 'mhumphrey@negeorgialibraries.org', '706-865-5572', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	149, 145, 3, 120, 120, 120, 120, 'NEG-HELEN', 'White County Library - Helen Branch', 'dkelley@negeorgialibraries.org', '706-878-2438', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	150, 145, 3, 121, 121, 121, 121, 'NEG-RABUN', 'Rabun County Library', 'libraryr@negeorgialibraries.org', '706-782-3731', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	151, 145, 3, 122, 122, 122, 122, 'NEG-TOCCOA', 'Toccoa-Stephens County Library', 'cmccartney@negeorgialibraries.org', '706-886-6082', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	152, 1, 2, NULL, NULL, NULL, NULL, 'HOU', 'Houston County Public Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	153, 152, 3, 123, 123, 123, 123, 'HOU-PE', 'Perry Branch Library', 'pelibrary@houpl.org', '478-987-3050', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	154, 152, 3, 124, 124, 124, 124, 'HOU-WR', 'Nola Brantley Memorial Library / Warner Robins', 'wrlibrary@houpl.org', '478-923-0128', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	155, 152, 3, 125, 125, 125, 125, 'HOU-CV', 'Centerville Branch Library', 'cvlibrary@houpl.org', '478-953-4500', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	156, 1, 2, NULL, NULL, NULL, NULL, 'HALL', 'Hall County Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	157, 156, 3, 126, 126, 126, 126, 'HALL-BPL', 'Blackshear Place Branch', 'bplcirc@mail.hall.public.lib.ga.us', '770-532-3311 ext. 151', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	158, 156, 3, 127, 127, 127, 127, 'HALL-CL', 'Clermont Branch', 'clcirc@hallcountylibrary.org', '770-532-3311 ext. 181', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	159, 156, 3, 128, 128, 128, 128, 'HALL-EH', 'East Hall and Special Needs Library', 'ehcirc@hallcountylibrary.org', '770-532-3311 ext. 161', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	160, 156, 3, 129, 129, 129, 129, 'HALL-GVL', 'Gainesville Branch', 'circdesk@hallcountylibrary.org', '770-532-3311 Ext. 110', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	161, 156, 3, 130, 130, 130, 130, 'HALL-MV', 'Murrayville Branch', 'mvcirc@hallcountylibrary.org', '770-532-3311 ext. 171', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	162, 156, 3, 293, 293, 293, 293, 'HALL-SSP', 'Spout Springs Library', 'ljames@hallcountylibrary.org', '770-532-3311 ext. 191', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	163, 1, 2, NULL, NULL, NULL, NULL, 'WGRL', 'West Georgia Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	164, 163, 3, 131, 131, 131, 131, 'WGRL-HQ', 'West Ga. Regional Library Hdqtrs.', 'hqreports@wgrl.net', '770-836-6711', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	165, 163, 3, 132, 132, 132, 132, 'WGRL-BKM', 'Bookmobile', 'extsers@wgrl.net', '770-836-6711', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	166, 163, 3, 133, 133, 133, 133, 'WGRL-BO', 'Bowdon Public Library', 'barbara@wgrl.net', '770-258-8991', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	167, 163, 3, 134, 134, 134, 134, 'WGRL-BR', 'Bremen Public Library', 'brreports@wgrl.net', '770-537-3937', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	168, 163, 3, 135, 135, 135, 135, 'WGRL-DC', 'Douglas County Public Library', 'dcreports@wgrl.net', '770-920-7125', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	169, 163, 3, 136, 136, 136, 136, 'WGRL-FR', 'Heard County Public Library', 'machelle@wgrl.net', '706-675-6501', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	170, 163, 3, 137, 137, 137, 137, 'WGRL-LS', 'Lithia Springs Betty C. Hagler Public Library', 'lindy@wgrl.net', '770-944-5931', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	171, 163, 3, 138, 138, 138, 138, 'WGRL-MR', 'Maude Ragsdale Public Library', 'mrreports@wgrl.net', '770-439-3964', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	172, 163, 3, 139, 139, 139, 139, 'WGRL-NG', 'New Georgia Public Library', 'ngreports@wgrl.net', '770-459-8163', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	173, 163, 3, 140, 140, 140, 140, 'WGRL-PC', 'Paulding County Public Library', 'pcreports@wgrl.net', '770-445-5680', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	174, 163, 3, 141, 141, 141, 141, 'WGRL-TA', 'Tallapoosa Public Library', 'karen@wgrl.net', '770-574-3124', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	175, 163, 3, 142, 142, 142, 142, 'WGRL-VR', 'Villa Rica Public Library', 'vrreports@wgrl.net', '770-459-7012', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	176, 163, 3, 143, 143, 143, 143, 'WGRL-BU', 'Buchanan Branch Library', 'jana@wgrl.net', '770-646-3369', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	177, 1, 2, NULL, NULL, NULL, NULL, 'SWGRL', 'Southwest Georgia Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	178, 177, 3, 144, 144, 144, 144, 'SWGRL-DEC', 'Decatur County Public Library', 'ssudderth@swgrl.org', '229-248-2665', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	179, 177, 3, 144, 144, 144, 144, 'SWGRL-BKM', 'Bookmobile', 'tkarnes@swgrl.org', NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	180, 177, 3, 145, 145, 145, 145, 'SWGRL-SEM', 'Seminole Public Library', 'jsmith@swgrl.org', '229-524-2665', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	181, 177, 3, 146, 146, 146, 146, 'SWGRL-MIL', 'Miller County Public Library', 'sgrimsley@swgrl.org', '229-758-3131', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	182, 1, 2, NULL, NULL, NULL, NULL, 'HART', 'Hart County Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	183, 182, 3, 147, 147, 147, 147, 'HART-HQ', 'Hart County Library', 'krucker@hartcountylibrary.com', '706-376-4655', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	184, 1, 2, NULL, NULL, NULL, NULL, 'PIED', 'Piedmont Regional Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	185, 184, 3, 148, 148, 148, 148, 'PIED-PEN', 'Pendergrass Public Library', 'pendergrasslibrary@yahoo.com', '706-693-4450', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	186, 184, 3, 149, 149, 149, 149, 'PIED-TAL', 'Talmo Public Library', 'cwomack@prlib.org', '706-693-1905', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	187, 184, 3, 150, 150, 150, 150, 'PIED-WIN', 'Headquarters-Winder', 'piedmont_lib@yahoo.com', '770-867-2762', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	188, 184, 3, 151, 151, 151, 151, 'PIED-AUB', 'Auburn Public Library', 'auburn_library@yahoo.com', '770-513-2925', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	189, 184, 3, 152, 152, 152, 152, 'PIED-COM', 'Commerce Public Library', 'commerce_public@yahoo.com', '706-335-5946', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	190, 184, 3, 153, 153, 153, 153, 'PIED-HOM', 'Banks County Public Library', 'staff@bcpl.us', '706-677-3164', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	191, 184, 3, 154, 154, 154, 154, 'PIED-JEF', 'Jefferson Public Library', 'jefferson_lib@yahoo.com', '706-367-8012', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	192, 184, 3, 155, 155, 155, 155, 'PIED-MAY', 'Maysville Public Library', 'maysville_lib@yahoo.com', '706-652-2323', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	193, 184, 3, 156, 156, 156, 156, 'PIED-NIC', 'H.S. Swindle Public (Nicholson)', 'beapearre@hotmail.com', '706-757-3577', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	194, 184, 3, 157, 157, 157, 157, 'PIED-STA', 'Statham Public Library', 'statham_lib@yahoo.com', '770-725-4785', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	195, 184, 3, 158, 158, 158, 158, 'PIED-BKM', 'Bookmobile', 'kmckean@prlib.org', '770-867-2762', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	196, 184, 3, 159, 159, 159, 159, 'PIED-BRL', 'Braselton Library', 'badkins@prlib.org', '706-654-1992', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	197, 1, 2, NULL, NULL, NULL, NULL, 'OCRL', 'Oconee Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	198, 197, 3, NULL, NULL, 317, 318, 'OCRL-GIBSN', 'Glascock County Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	199, 197, 3, 160, 160, 160, 160, 'OCRL-WRIGH', 'Johnson County Library', 'johncolib@yahoo.com', '478-864-3940', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	200, 197, 3, 161, 161, 161, 161, 'OCRL-DUBLN', 'Laurens County Library', 'mmason@ocrl.org', '478-272-5710', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	201, 197, 3, 162, 162, 162, 162, 'OCRL-SANDR', 'Rosa M. Tarbutton Memorial Library', 'dmeeks@ocrl.org', '478-552-7466', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	202, 197, 3, 163, 163, 163, 163, 'OCRL-SOPER', 'Treutlen County Library', 'igkerr@yahoo.com', '912-529-6683', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	203, 1, 2, NULL, NULL, NULL, NULL, 'OHOOP', 'Ohoopee Regional Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	204, 203, 3, 164, 164, 164, 164, 'OHOOP-VIDT', 'Vidalia-Toombs County Library', 'ohovidt@ohoopeelibrary.org', '912-537-9283', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	205, 203, 3, 165, 165, 165, 165, 'OHOOP-MONT', 'Montgomery County Library', 'ohomont@ohoopeelibrary.org', '912-583-2780', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	206, 203, 3, 166, 166, 166, 166, 'OHOOP-LYON', 'Nelle Brown Memorial [Lyon]', 'oholyon@ohoopeelibrary.org', '912-526-6511', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	207, 203, 3, 167, 167, 167, 167, 'OHOOP-TATR', 'Reidsville / Tattnall County Library', 'ohotatr@ohoopeelibrary.org', '912-557-6247', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	208, 203, 3, 168, 168, 168, 168, 'OHOOP-TATG', 'Glennville / Tattnall County Library', 'ohotatg@ohoopeelibrary.org', '912-654-3812', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	209, 203, 3, 169, 169, 169, 169, 'OHOOP-BKML', 'Bookmobile', 'ohovidt@ohoopeelibrary.org', '912-537-9283', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	210, 203, 3, 170, 170, 170, 170, 'OHOOP-LADS', 'Ladson Genealogical Library', 'oholads@ohoopeelibrary.org', '912-537-9283', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	211, 1, 2, NULL, NULL, NULL, NULL, 'BROOK', 'Brooks County Public Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	212, 211, 3, 171, 171, 171, 171, 'BROOK-HQ', 'Brooks County Public Library Headquarters', 'brookscpl@yahoo.com', '229-263-4412', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	213, 1, 2, NULL, NULL, NULL, NULL, 'CRLS', 'Chestatee Regional Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	214, 213, 3, 172, 172, 172, 172, 'CRLS-LMPKN', 'Lumpkin County Library', 'libraryl@chestateelibrary.org', '706-864-3668', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	215, 213, 3, 173, 173, 173, 173, 'CRLS-DAWSN', 'Dawson County Library', 'libraryd@chestateelibrary.org', '706-344-3690', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	216, 1, 2, NULL, NULL, NULL, NULL, 'CHRL', 'Cherokee Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	217, 216, 3, 174, 174, 174, 174, 'CHRL-LW', 'LaFayette-Walker County Library', 'lwcirc@chrl.org', '706-638-2992', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	218, 216, 3, 175, 175, 175, 175, 'CHRL-ROSS', 'Rossville Public Library', 'rosscirc@chrl.org', '706-866-1368', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	219, 216, 3, 176, 176, 176, 176, 'CHRL-CHICK', 'Chickamauga Public Library', 'chickcirc@chrl.org', '706-375-3004', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	220, 216, 3, 177, 177, 177, 177, 'CHRL-DADE', 'Dade County Public Library', 'dadecirc@chrl.org', '706-657-7857', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	221, 1, 2, NULL, NULL, NULL, NULL, 'BTRL', 'Bartram Trail Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	222, 221, 3, 178, 178, 178, 178, 'BTRL-MWL', 'Mary Willis Library', 'pattyh@btrl.net', '706-678-7736', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	223, 221, 3, 179, 179, 179, 179, 'BTRL-MCD', 'Thomson-McDuffie County Library', 'thomsonl@btrl.net', '706-595-1341', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	224, 221, 3, 180, 180, 180, 180, 'BTRL-TCL', 'Taliaferro County Library', 'taliacl@btrl.net', '706-456-2531', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	225, 221, 3, 181, 181, 181, 181, 'BTRL-BKM', 'Bookmobile', 'bkmc@btrl-net', '706-678-7736', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	226, 1, 2, NULL, NULL, NULL, NULL, 'JCL', 'Jefferson County Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	227, 226, 3, 182, 182, 182, 182, 'JCL-LVILLE', 'Louisville Public Library', 'circdesk@mail.jefferson.public.lib.ga.us', '478-625-3751', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	228, 226, 3, 183, 183, 183, 183, 'JCL-WRENS', 'McCollum Public Library', 'wrenscir@mail.jefferson.public.lib.ga.us', '706-547-3484', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	229, 226, 3, 184, 184, 184, 184, 'JCL-WADLEY', 'Wadley Public Library', 'wacirc@mail.jefferson.public.lib.ga.us', '478-252-1366', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	230, 226, 3, NULL, NULL, NULL, NULL, 'JCL-BKMOBL', 'Bookmobile', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	231, 1, 2, NULL, NULL, NULL, NULL, 'NCLS', 'Newton County Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	232, 231, 3, 185, 185, 185, 185, 'NCLS-COVTN', 'Covington Branch Library', 'library@newtonlibrary.org', '770-787-3231', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	233, 1, 2, NULL, NULL, NULL, NULL, 'MGRL', 'Middle Georgia Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	234, 233, 3, 186, 186, 186, 186, 'MGRL-WA', 'Washington Memorial Library', 'mgrlwa@bibblib.org', '478-744-0801', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	235, 233, 3, 187, 187, 187, 187, 'MGRL-SH', 'Shurling Branch Library', 'mgrlsh@bibblib.org', '478-744-0875', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	236, 233, 3, 188, 188, 188, 188, 'MGRL-RV', 'Riverside Branch Library', 'mgrlrv@bibblib.org', '478-757-8900', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	237, 233, 3, 297, 297, 297, 297, 'MGRL-LA', 'Charles A. Lanford Library', 'mgrlla@bibblib.org', '478- 621-6979', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	238, 233, 3, 190, 190, 190, 190, 'MGRL-WB', 'West Bibb Branch Library', 'mgrlwb@bibblib.org', '478-744-0818', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	239, 233, 3, 191, 191, 191, 191, 'MGRL-RO', 'Crawford County Public Library', 'mgrlro@bibblib.org', '478-836-4478', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	240, 233, 3, 192, 192, 192, 192, 'MGRL-JO', 'Jones County Public Library', 'mgrljo@bibblib.org', '478-986-6626', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	241, 233, 3, 193, 193, 193, 193, 'MGRL-ID', 'Ideal Public Library', 'mgrlre@bibblib.org', '478-949-2720', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	242, 233, 3, 194, 194, 194, 194, 'MGRL-OG', 'Oglethorpe Public Library', 'mgrlog@bibblib.org', '478-472-7116', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	243, 233, 3, 195, 195, 195, 195, 'MGRL-MA', 'Marshallville Public Library', 'mgrlma@bibblib.org', '478-967-2413', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	244, 233, 3, 196, 196, 196, 196, 'MGRL-MO', 'Montezuma Public Library', 'mgrlmo@bibblib.ga', '478-472-6095', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	245, 233, 3, NULL, NULL, 326, 327, 'MGRL-TW', 'Twiggs County Public Library', 'mgrltw@bibblib.org', '478-945-3814', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	246, 233, 3, 197, 197, 197, 197, 'MGRL-EW', 'East Wilkinson County Library', 'mgrlew@bibblib.org', '478-946-2778', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	247, 233, 3, 198, 198, 198, 198, 'MGRL-GO', 'Gordon Public Library', 'mgrlgo@bibblib.org', '478 628 5352', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	248, 233, 3, 199, 199, 199, 199, 'MGRL-GH', 'Genealogical and Historical Department', 'mgrlgh@bibblib.org', '478-744-0820', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	249, 233, 3, 200, 200, 200, 200, 'MGRL-LB', 'Library for the Blind & Physically Handicapped', 'mgrltbc@bibblib.org', '478-744-0878', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	250, 233, 3, 201, 201, 201, 201, 'MGRL-MM', 'Miss Martha Bookmobile', 'mgrlre@bibblib.org', '478-744-0816', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	251, 233, 3, 202, 202, 202, 202, 'MGRL-RE', 'Regional Library', NULL, '478-744-0800', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	252, 1, 2, NULL, NULL, NULL, NULL, 'KRLS', 'Kinchafoonee Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	253, 252, 3, NULL, NULL, NULL, NULL, 'KRLS-AR', 'Arlington Branch Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	254, 252, 3, 203, 203, 203, 203, 'KRLS-CA', 'Calhoun County Library', 'lmorgan@krlibrary.org', '229-835-2012', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	255, 252, 3, 204, 204, 204, 204, 'KRLS-CL', 'Clay County Library', 'treynolds@krlibrary.org', '229-768-2248', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	256, 252, 3, 205, 205, 205, 205, 'KRLS-RA', 'Randolph County Library', 'lewiley@krlibrary.org', '229-732-2566', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	257, 252, 3, 206, 206, 206, 206, 'KRLS-TE', 'Terrell County Library', 'copelandc@krlibrary.org', '229-995-2902', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	258, 252, 3, 207, 207, 207, 207, 'KRLS-WE', 'Webster County Library', 'meddersd@krlibrary.org', '229-828-5740', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	259, 252, 3, 208, 208, 208, 208, 'KRLS-KI', 'Kinchafoonee Regional Library', 'meddersd@krlibrary.org', '229-995-6331', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	260, 1, 2, NULL, NULL, NULL, NULL, 'DTRL', 'Desoto Trail Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	261, 260, 3, 209, 209, 209, 209, 'DTRL-CAMI', 'Camilla-DeSoto Trail Regional Library', 'mcneely@mail.mitchell.public.lib.ga.us', '229-336-8372', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	262, 346, 3, 240, 241, 242, 240, 'WORTH-SYLV', 'Sylvester-Margaret Jones Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	263, 260, 3, 210, 210, 210, 210, 'DTRL-BLAK', 'Blakely-Maddox Memorial Library', NULL, '229-723-3079', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	264, 260, 3, 211, 211, 211, 211, 'DTRL-PELH', 'Pelham-Pelham Carnegie Library', NULL, '229-294-6030', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	265, 260, 3, NULL, NULL, NULL, NULL, 'DTRL-BAKR', 'Baker County Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	266, 260, 3, NULL, NULL, NULL, NULL, 'DTRL-JAKN', 'Jakin Public Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	267, 1, 2, NULL, NULL, NULL, NULL, 'CPRL', 'Coastal Plain Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	268, 267, 3, 212, 212, 212, 212, 'CPRL-A', 'Victoria Evans Memorial Library', 'veml@cprl.org', '229-567-4027', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	269, 267, 3, 213, 213, 213, 213, 'CPRL-B', 'Carrie Dorsey Perry Memorial Library', 'cdpml@cprl.org', '229-686-2782', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	270, 267, 3, 214, 214, 214, 214, 'CPRL-C', 'Cook County Library', 'ccl@cprl.org', '229-896-3652', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	271, 267, 3, 215, 215, 215, 215, 'CPRL-L', 'Irwin County Library', 'icl@cprl.org', '229-468-2148', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	272, 267, 3, 216, 216, 216, 216, 'CPRL-R', 'Headquarters Library', 'cprl@cprl.org', '229-386-3400', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	273, 267, 3, 217, 217, 217, 217, 'CPRL-T', 'Tifton-Tift County Public Library', 'ttcpl@cprl.org', '229-386-7148', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	274, 267, 3, 218, 218, 218, 218, 'CPRL-BKM', 'Bookmobile', 'kgriffis@cprl.org', '229-386-3400', FALSE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	275, 1, 2, NULL, NULL, NULL, NULL, 'ECGR', 'East Central Georgia Regional Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	276, 275, 3, 219, 219, 219, 219, 'ECGR-MAIN', 'Augusta-Richmond Co. Public Lib.', 'main@ecgrl.org', '706-821-2600', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	278, 275, 3, 221, 221, 221, 221, 'ECGR-APPBY', 'Appleby Branch Library', 'appleby@ecgrl.org', '706-736-6244', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	279, 275, 3, 222, 222, 222, 222, 'ECGR-FRMAN', 'Friedman Branch Library', 'friedman@ecgrl.org', '706-736-6758', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	280, 275, 3, 223, 223, 223, 223, 'ECGR-MXWLL', 'Maxwell Branch Library', 'maxwell@ecgrl.org', '706-793-2020', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	281, 275, 3, 224, 224, 224, 224, 'ECGR-WALLC', 'Wallace Branch Library', 'wallace@ecgrl.org', '706-722-6275', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	282, 275, 3, 225, 225, 225, 225, 'ECGR-DIAML', 'Diamond Lakes Branch Library', 'diamondlakes@ecgrl.org', '706-772-2432', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	284, 275, 3, 227, 227, 227, 227, 'ECGR-BURKE', 'Burke County Library, Waynesboro', 'burke@ecgrl.org', '706-554-3277', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	285, 275, 3, 228, 228, 228, 228, 'ECGR-MIDVL', 'Midville Branch Library', 'midville@ecgrl.org', '478-589-7825', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	286, 275, 3, 229, 229, 229, 229, 'ECGR-SRDIS', 'Sardis Branch Library', 'sardis@ecgrl.org', '478-569-4866', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	287, 275, 3, 230, 230, 230, 230, 'ECGR-CCO', 'Columbia County Library', 'columbia@ecgrl.org', '706-863-1946', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	288, 275, 3, 231, 231, 231, 231, 'ECGR-HARLM', 'Harlem Branch library', 'harlem@ecgrl.org', '706-556-9795', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	289, 275, 3, 232, 232, 232, 232, 'ECGR-EUCHE', 'Euchee Creek Library', 'euchee@ecgrl.org', '706-556-0594', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	290, 275, 3, 233, 233, 233, 233, 'ECGR-WARRN', 'Warren County Library', 'warren@ecgrl.org', '706-465-2656', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	291, 275, 3, 234, 234, 234, 234, 'ECGR-LINCN', 'Lincoln County Library', 'lincoln@ecgrl.org', '706-359-4014', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	292, 1, 2, NULL, NULL, NULL, NULL, 'ORLS', 'Ocmulgee Regional Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	293, 292, 3, 235, 235, 235, 235, 'ORLS-HDQ', 'Ocmulgee Regional Library Headquarters', 'staff@orls.org', '4783744711', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	294, 292, 3, 236, 236, 236, 236, 'ORLS-TEL', 'Telfair County Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	295, 292, 3, 237, 237, 237, 237, 'ORLS-BLE', 'Bleckley County Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	296, 292, 3, 238, 238, 238, 238, 'ORLS-WIL', 'Wilcox County Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	297, 292, 3, 239, 239, 239, 239, 'ORLS-PUL', 'Pulaski County Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	298, 292, 3, NULL, NULL, NULL, NULL, 'ORLS-WHE', 'Wheeler County Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	299, 292, 3, NULL, NULL, NULL, NULL, 'ORLS-EXT', 'Extension Services', NULL, NULL, FALSE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	300, 140, 3, 276, 275, 274, 273, 'HCLS-FV', 'Fairview Branch', NULL, '770-389-6277', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	301, 1, 2, NULL, NULL, NULL, NULL, 'SGRL', 'South Georgia Regional Library System', NULL, '229-333-0086', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	303, 301, 3, 244, 244, 244, 244, 'SGRL-VALDOSTA', 'Valdosta-Lowndes County Library', NULL, '229-333-0086', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	304, 301, 3, 249, 249, 249, 249, 'SGRL-SSIDE', 'McMullen Southside Library', NULL, '229-253-8313', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	305, 301, 3, 248, 248, 248, 248, 'SGRL-HAHIRA', 'Salter Hahira Library', NULL, '229-794-3063', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	306, 301, 3, 247, 247, 247, 247, 'SGRL-ECHOLS', 'Allen Statenville Library', NULL, '229-559-8182', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	307, 301, 3, 246, 246, 246, 246, 'SGRL-LAKES', 'Johnston Lakes Library', NULL, '229-559-8016', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	308, 301, 3, 245, 245, 245, 245, 'SGRL-LANIER', 'Miller Lakeland Library', NULL, '229-482-2904', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	309, 301, 3, 244, 244, 244, 244, 'SGRL-TBC', 'Talking Book Center', NULL, '229-333-7658', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	310, 301, 3, 244, 244, 244, 244, 'SGRL-BOOKVAN', 'Bookvan', NULL, '229-333-0086 ext 228', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	311, 1, 2, NULL, NULL, NULL, NULL, 'TCPLS', 'Thomas County Public Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	312, 311, 3, 292, 292, 292, 292, 'TCPLS-THOMAS', 'Thomas County Public Library', NULL, '229-225-5252', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	313, 311, 3, 287, 287, 287, 287, 'TCPLS-BOS', 'Boston Carnegie Library', NULL, '229-498-5101', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	314, 311, 3, 288, 288, 288, 288, 'TCPLS-COOL', 'Coolidge Public Library', NULL, '229-346-3463', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	315, 311, 3, 289, 289, 289, 289, 'TCPLS-OCH', 'Gladys M. Clark Public Library', NULL, '229-574-5884', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	316, 311, 3, 290, 290, 290, 290, 'TCPLS-MEIGS', 'Meigs Public Library', NULL, '229-683-3853', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	317, 311, 3, 291, 291, 291, 291, 'TCPLS-PAVO', 'Pavo Public Library', NULL, '229-859-2697', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	318, 260, 3, 252, 252, 252, 252, 'DTRL-SALECITY', 'Sale City Library', 'rigsby@desototrail.org', '229-336-7885', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	319, 163, 3, 253, 253, 253, 253, 'WGRL-WB', 'Whitesburg Public Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	320, 163, 3, 255, 255, 256, 255, 'WGRL-MZ', 'Mount Zion Public Library', NULL, '770-832-0056 ext 104', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	321, 1, 2, NULL, NULL, 257, 257, 'THRL', 'Troup-Harris Regional Library', NULL, '706-882-7784', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	322, 321, 3, 268, 267, 258, 258, 'THRL-HOG', 'Hogansville Public Library', NULL, '706-637-6230', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	323, 321, 3, 270, 269, 260, 259, 'THRL-HC', 'Harris County Public Library', NULL, '706-628-4685', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	324, 321, 3, 272, 271, 262, 261, 'THRL-WMS', 'Williams Memorial Library', NULL, '706-660-8796', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	326, 321, 3, 266, 265, 264, 263, 'THRL-LAG', 'LaGrange Memorial Library', NULL, '706-882-7784', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	328, 1, 2, NULL, NULL, NULL, 313, 'LBRLS', 'Lake Blackshear Regional Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	329, 328, 3, 277, 277, 277, 277, 'LBRLS-LB', 'Lake Blackshear Regional Library', NULL, ' 229 924-8091 ', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	330, 328, 3, 278, 278, 279, 278, 'LBRLS-CORD', 'Cordele-Crisp Carnegie Library', NULL, ' 229 276-1300 ', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	331, 328, 3, 284, 283, 284, 283, 'LBRLS-BYRM', 'Byromville Public Library ', NULL, ' 478 433-5100 ', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	333, 328, 3, 280, 280, 280, 280, 'LBRLS-DOOLY', 'Dooly County Library', NULL, '229 268-4687 ', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	335, 328, 3, 281, 281, 282, 281, 'LBRLS-UNAD', 'Elizabeth Harris Library', NULL, '478 627-9303 ', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	336, 328, 3, 286, 285, 286, 285, 'LBRLS-SCH', 'Schley County Public Library', NULL, '229 937-2004 ', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	337, 328, 3, 314, 314, 314, 314, 'LBRLS-BKM', 'Lake Blackshear Regional Library Bookmobile', NULL, NULL, FALSE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	340, 231, 3, 307, 306, 305, 304, 'NCLS-NEWBRN', 'Newborn Library Service Outlet', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	342, 231, 3, 300, 303, 302, 301, 'NCLS-PORTER', 'Porter Memorial Branch Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	343, 252, 3, 296, 295, 294, 295, 'KRLS-QU', 'Quitman County Public Library', NULL, '229-334-8972', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	344, 1, 2, NULL, NULL, NULL, NULL, 'CCL', 'Catoosa County Library', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	345, 344, 3, 298, 298, 298, 298, 'CCL-RING', 'Catoosa County Library', NULL, '706-965-3600', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	346, 1, 2, NULL, NULL, NULL, NULL, 'WORTH', 'Worth County Library System', NULL, NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	347, 55, 3, 311, 310, 309, 308, 'TLLS-FAL', 'Floride Allen Library', 'mvml@tllsga.org', NULL, TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	349, 163, 3, NULL, 315, 315, 315, 'WGRL-EP', 'Ephesus Public Library', 'roni@wgrl.net', '770-854-7323', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	350, 145, 3, 323, 321, 322, 320, 'NEG-SYSTEM', 'System Offices', NULL, '706-754-0416', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	351, 156, 3, NULL, NULL, NULL, 324, 'HALL-TEMP', 'HALL-TEMP', NULL, NULL, FALSE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	352, 163, 3, NULL, NULL, NULL, NULL, 'WGRL-CR', 'Crossroads Public Library', NULL, NULL, FALSE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	353, 1, 2, 328, 329, 330, 331, 'NGRL', 'Northwest Georgia Regional Library', NULL, '706-876-1360', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	354, 353, 3, 332, 333, 334, 335, 'NGRL-CG', 'Calhoun-Gordon County Library', NULL, '706-624-1456', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	355, 353, 3, 336, 337, 338, 339, 'NGRL-DW', 'Dalton-Whitfield Library ', NULL, '706-876-1360', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	356, 353, 3, 340, 341, 342, 343, 'NGRL-CM', 'Chatsworth Murray County Library', NULL, '706-695-4200', TRUE);
INSERT INTO actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible) VALUES (
	357, 46, 3, NULL, NULL, NULL, NULL, 'URRLS-WG', 'Walnut Grove Library', NULL, NULL, FALSE);
