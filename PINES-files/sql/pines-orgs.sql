-- add PINES language to actor.org_unit_type
UPDATE actor.org_unit_type SET opac_label = 'All PINES Libraries' WHERE id = 1;

-- the default sql seed values script sets the value of the PK id sequence at 100 - it needs to be reset to 360 to accommodate existing PINES org ids

-- edit 9 default ous to PINES values
UPDATE actor.org unit SET parent_ou = , ou_type = , shortname = , name =  , WHERE id = ;
UPDATE actor.org unit SET shortname = 'PINES', name = 'PINES' WHERE id = 1;
UPDATE actor.org unit SET parent_ou = 1, ou_type = 2, shortname = 'MCCLS', name = 'Moultrie-Colquitt County Library', WHERE id = 2;
UPDATE actor.org unit SET parent_ou = 2, ou_type = 3, shortname = 'MCCLS-HQ', name = 'Moultrie-Colquitt County Library', WHERE id = 3;
UPDATE actor.org unit SET parent_ou = 2, ou_type = 3, shortname = 'MCCLS-DOE', name = 'Doerun Municipal Library', WHERE id = 4;
UPDATE actor.org unit SET parent_ou = 2, ou_type = 3, shortname = 'MCCLS-BKM', name = 'Bookmobile', WHERE id = 5;
UPDATE actor.org unit SET parent_ou = 1, ou_type = 2, shortname = 'ARL', name = 'Athens Regional Library System', WHERE id = 6;
UPDATE actor.org unit SET parent_ou = 6, ou_type = 3, shortname = 'ARL-ATH', name = 'Athens-Clarke County Library', WHERE id = 7;
UPDATE actor.org unit SET parent_ou = 6, ou_type = 3, shortname = 'ARL-WAT', name = 'Watkinsville/Oconee County Library', WHERE id = 8;
UPDATE actor.org unit SET parent_ou = 6, ou_type = 3, shortname = 'ARL-BOG', name = 'Bogart Library', WHERE id = 9;

-- TODO: we need actor.org_address entries for PINES libraries

-- insert PINES org_units 

INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(10, 6, 3, 'ARL-LEX', 'Lexington/Oglethorpe County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(11, 6, 3, 'ARL-DAN', 'Danielsville/Madison County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(12, 6, 3, 'ARL-WINT', 'Winterville Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(13, 6, 3, 'ARL-LAV', 'Lavonia Carnegie Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(14, 6, 3, 'ARL-ROY', 'Royston Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(15, 6, 3, 'ARL-ENSAT', 'Sandy Creek ENSAT Resource Ctr.');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(16, 6, 3, 'ARL-LYNDON', 'Lyndon House Art Resource Ctr.');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(17, 6, 3, 'ARL-BKM', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(18, 6, 3, 'ARL-EAST', 'East Athens Community Resource Ctr.');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(19, 6, 3, 'ARL-LAY', 'Lay Park Community Resource Ctr.');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(20, 6, 3, 'ARL-PWOODS', 'Pinewoods North Community Learning Center');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(21, 1, 2, 'ECPL', 'Elbert County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(22, 21, 3, 'ECPL-ECPL', 'Elbert County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(23, 21, 3, 'ECPL-BWMN', 'Bowman Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(24, 21, 3, 'ECPL-BKM', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(25, 1, 2, 'SHRL', 'Sara Hightower Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(26, 25, 3, 'SHRL-RM', 'Rome Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(27, 25, 3, 'SHRL-CS', 'Cave Spring Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(28, 25, 3, 'SHRL-RK', 'Rockmart Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(29, 25, 3, 'SHRL-CD', 'Cedartown Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(30, 25, 3, 'SHRL-BK', 'Outreach Collection');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(31, 1, 2, 'FBHCL', 'Fitzgerald-Ben Hill County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(32, 31, 3, 'FBHCL-MAIN', 'Fitzgerald-Ben Hill County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(33, 1, 2, 'DCPL', 'Dougherty County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(34, 33, 3, 'DCPL-CEN', 'Central Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(35, 33, 3, 'DCPL-NW', 'Northwest Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(36, 33, 3, 'DCPL-TAL', 'Tallulah Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(37, 33, 3, 'DCPL-WT', 'Westtown Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(38, 33, 3, 'DCPL-SS', 'Southside Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(39, 1, 2, 'STRL', 'Statesboro Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(40, 39, 3, 'STRL-SBORO', 'Headquarters,  Statesboro');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(41, 39, 3, 'STRL-METT', 'L.C. Anderson Memorial Library,  Candler County,  Metter');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(42, 39, 3, 'STRL-PEMB', 'Bryan County Library,  Pembroke');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(43, 39, 3, 'STRL-RHILL', 'Bryan County Library,  Richmond Hill');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(44, 39, 3, 'STRL-SWAIN', 'Franklin Memorial Library,  Emanuel County,  Swainsboro');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(45, 39, 3, 'STRL-CLAX', 'Evans County Library,  Evans');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(46, 1, 2, 'URRLS', 'Uncle Remus Regional Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(47, 46, 3, 'URRLS-GR', 'Greene County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(48, 46, 3, 'URRLS-HA', 'Hancock County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(49, 46, 3, 'URRLS-JA', 'Jasper County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(50, 46, 3, 'URRLS-MA', 'Morgan County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(51, 46, 3, 'URRLS-MR', 'Monroe-Walton County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(52, 46, 3, 'URRLS-OK', 'O''Kelly Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(53, 46, 3, 'URRLS-PU', 'Putnam County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(54, 46, 3, 'URRLS-SC', 'Stanton Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(55, 1, 2, 'TLLS', 'Twin Lakes Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(56, 55, 3, 'TLLS-MV', 'Mary Vinson Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(57, 55, 3, 'TLLS-LS', 'Lake Sinclair Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(58, 1, 2, 'OKRL', 'Okefenokee Regional Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(59, 58, 3, 'OKRL-CLNCH', 'Clinch County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(60, 58, 3, 'OKRL-BACON', 'Alma-Bacon County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(61, 58, 3, 'OKRL-BLMEM', 'Blackshear Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(62, 58, 3, 'OKRL-APPL', 'Appling County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(63, 58, 3, 'OKRL-WWC', 'Waycross-Ware Co. Public Lib.');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(64, 58, 3, 'OKRL-BKM', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(65, 1, 2, 'STATELIB', 'Georgia Public Library Service');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(66, 65, 3, 'STATELIB-L', 'Georgia State Library Collection');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(67, 65, 3, 'STATELIB-B', 'GLASS - Georgia Library for Accessible Services');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(68, 1, 2, 'TRRL', 'Three Rivers Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(69, 68, 3, 'TRRL-SAPLO', 'Hog Hammock Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(70, 68, 3, 'TRRL-SSI', 'St. Simons Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(71, 68, 3, 'TRRL-BRANT', 'Brantley County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(72, 68, 3, 'TRRL-CAMDN', 'Camden County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(73, 68, 3, 'TRRL-CHARL', 'Charlton County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(74, 68, 3, 'TRRL-GLYNN', 'Brunswick-Glynn County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(75, 68, 3, 'TRRL-LONG', 'Long County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(76, 68, 3, 'TRRL-MCINT', 'McIntosh County/Ida Hilton Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(77, 68, 3, 'TRRL-STMRY', 'St. Mary''s Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(78, 68, 3, 'TRRL-WAYNE', 'Wayne County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(79, 68, 3, 'TRRL-BKM', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(80, 1, 2, 'SJRLS', 'Screven-Jenkins Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(81, 80, 3, 'SJRLS-SCL', 'Screven County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(82, 80, 3, 'SJRLS-JCML', 'Jenkins County Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(83, 80, 3, 'SJRLS-BKM', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(84, 80, 3, 'SJRLS-JCES', 'Jenkins County Elementary School');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(85, 1, 2, 'RML', 'Roddenbery Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(86, 85, 3, 'RML-MAIN', 'Roddenbery Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(87, 1, 2, 'PMRLS', 'Pine Mountain Regional Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(88, 87, 3, 'PMRLS-BPL', 'Butler Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(89, 87, 3, 'PMRLS-HML', 'Hightower Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(90, 87, 3, 'PMRLS-GPL', 'Greenville Area Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(91, 87, 3, 'PMRLS-MPL', 'Manchester Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(92, 87, 3, 'PMRLS-RCL', 'Reynolds Community Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(93, 87, 3, 'PMRLS-TCL', 'Talbot County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(94, 87, 3, 'PMRLS-EXT', 'Extension Services');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(95, 87, 3, 'PMRLS-YPL', 'Yatesville Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(96, 1, 2, 'MRLS', 'Mountain Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(97, 96, 3, 'MRLS-MRL', 'Mountain Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(98, 96, 3, 'MRLS-BKMB', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(99, 96, 3, 'MRLS-FCPL', 'Fannin County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(100, 96, 3, 'MRLS-TCPL', 'Towns County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(101, 96, 3, 'MRLS-UCPL', 'Union County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(102, 1, 2, 'PPL', 'Peach Public Libraries');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(103, 102, 3, 'PPL-TPL', 'Thomas Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(104, 102, 3, 'PPL-BPL', 'Byron Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(105, 102, 3, 'PPL-LEC', 'Peach County Law Enforcement Center');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(106, 1, 2, 'FRRLS', 'Flint River Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(107, 106, 3, 'FRRLS-GR', 'Griffin-Spalding County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(108, 106, 3, 'FRRLS-JA', 'Jackson-Butts County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(109, 106, 3, 'FRRLS-BA', 'Barnesville-Lamar County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(110, 106, 3, 'FRRLS-FY', 'Monroe County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(111, 106, 3, 'FRRLS-FA', 'Fayette County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(112, 106, 3, 'FRRLS-PT', 'Peachtree City Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(113, 106, 3, 'FRRLS-ZE', 'J. Joel Edwards Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(114, 106, 3, 'FRRLS-TY', 'Tyrone Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(115, 1, 2, 'LEE', 'Lee County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(116, 115, 3, 'LEE-SMV', 'Smithville Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(117, 115, 3, 'LEE-LSB', 'Leesburg Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(118, 115, 3, 'LEE-RED', 'Redbone Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(119, 1, 2, 'CHAT', 'Chattooga County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(120, 119, 3, 'CHAT-TRION', 'Trion Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(121, 119, 3, 'CHAT-SMRVL', 'Summerville Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(122, 1, 2, 'ROCK', 'Conyers-Rockdale Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(123, 122, 3, 'ROCK-NG', 'Nancy Guinn Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(124, 1, 2, 'CLAYTN', 'Clayton County Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(125, 124, 3, 'CLAYTN-HQS', 'Headquarters Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(126, 124, 3, 'CLAYTN-FOR', 'Forest Park Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(127, 124, 3, 'CLAYTN-JON', 'Jonesboro Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(128, 124, 3, 'CLAYTN-LOV', 'Lovejoy Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(129, 124, 3, 'CLAYTN-MOR', 'Morrow Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(130, 124, 3, 'CLAYTN-RIV', 'Riverdale Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(131, 1, 2, 'SRL', 'Satilla Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(132, 131, 3, 'SRL-AMBR', 'Ambrose Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(133, 131, 3, 'SRL-BKMO', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(134, 131, 3, 'SRL-BROX', 'Broxton Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(135, 131, 3, 'SRL-DOUG', 'Douglas-Coffee County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(136, 203, 3, 'OHOOP-JDHAZ', 'Hazlehurst-Jeff Davis Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(137, 131, 3, 'SRL-NICH', 'Nicholls Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(138, 131, 3, 'SRL-PEAR', 'Pearson Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(139, 131, 3, 'SRL-WILLA', 'Willacoochee Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(140, 1, 2, 'HCLS', 'Henry County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(141, 140, 3, 'HCLS-LG', 'Locust Grove Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(142, 140, 3, 'HCLS-MD', 'McDonough Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(143, 140, 3, 'HCLS-ST', 'Cochran Public Library / Stockbridge');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(144, 140, 3, 'HCLS-HA', 'Fortson Public Library / Hampton');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(145, 1, 2, 'NEG', 'Northeast Georgia Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(146, 145, 3, 'NEG-CLRKVL', 'Clarkesville-Habersham County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(147, 145, 3, 'NEG-CORNEL', 'Cornelia-Habersham County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(148, 145, 3, 'NEG-CLVLND', 'White County Library - Cleveland Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(149, 145, 3, 'NEG-HELEN', 'White County Library - Helen Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(150, 145, 3, 'NEG-RABUN', 'Rabun County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(151, 145, 3, 'NEG-TOCCOA', 'Toccoa-Stephens County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(152, 1, 2, 'HOU', 'Houston County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(153, 152, 3, 'HOU-PE', 'Perry Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(154, 152, 3, 'HOU-WR', 'Nola Brantley Memorial Library / Warner Robins');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(155, 152, 3, 'HOU-CV', 'Centerville Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(156, 1, 2, 'HALL', 'Hall County Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(157, 156, 3, 'HALL-BPL', 'Blackshear Place Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(158, 156, 3, 'HALL-CL', 'Clermont Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(159, 156, 3, 'HALL-EH', 'East Hall and Special Needs Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(160, 156, 3, 'HALL-GVL', 'Gainesville Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(161, 156, 3, 'HALL-MV', 'Murrayville Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(162, 156, 3, 'HALL-SSP', 'Spout Springs Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(163, 1, 2, 'WGRL', 'West Georgia Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(164, 163, 3, 'WGRL-HQ', 'West Ga. Regional Library Hdqtrs.');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(165, 163, 3, 'WGRL-BKM', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(166, 163, 3, 'WGRL-BO', 'Bowdon Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(167, 163, 3, 'WGRL-BR', 'Bremen Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(168, 163, 3, 'WGRL-DC', 'Douglas County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(169, 163, 3, 'WGRL-FR', 'Heard County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(170, 163, 3, 'WGRL-LS', 'Lithia Springs Betty C. Hagler Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(171, 163, 3, 'WGRL-MR', 'Maude Ragsdale Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(172, 163, 3, 'WGRL-NG', 'New Georgia Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(173, 163, 3, 'WGRL-PC', 'Paulding County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(174, 163, 3, 'WGRL-TA', 'Tallapoosa Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(175, 163, 3, 'WGRL-VR', 'Villa Rica Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(176, 163, 3, 'WGRL-BU', 'Buchanan Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(177, 1, 2, 'SWGRL', 'Southwest Georgia Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(178, 177, 3, 'SWGRL-DEC', 'Decatur County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(179, 177, 3, 'SWGRL-BKM', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(180, 177, 3, 'SWGRL-SEM', 'Seminole Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(181, 177, 3, 'SWGRL-MIL', 'Miller County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(182, 1, 2, 'HART', 'Hart County Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(183, 182, 3, 'HART-HQ', 'Hart County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(184, 1, 2, 'PIED', 'Piedmont Regional Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(185, 184, 3, 'PIED-PEN', 'Pendergrass Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(186, 184, 3, 'PIED-TAL', 'Talmo Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(187, 184, 3, 'PIED-WIN', 'Headquarters-Winder');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(188, 184, 3, 'PIED-AUB', 'Auburn Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(189, 184, 3, 'PIED-COM', 'Commerce Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(190, 184, 3, 'PIED-HOM', 'Banks County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(191, 184, 3, 'PIED-JEF', 'Jefferson Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(192, 184, 3, 'PIED-MAY', 'Maysville Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(193, 184, 3, 'PIED-NIC', 'H.S. Swindle Public (Nicholson)');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(194, 184, 3, 'PIED-STA', 'Statham Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(195, 184, 3, 'PIED-BKM', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(196, 184, 3, 'PIED-BRL', 'Braselton Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(197, 1, 2, 'OCRL', 'Oconee Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(198, 197, 3, 'OCRL-GIBSN', 'Glascock County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(199, 197, 3, 'OCRL-WRIGH', 'Johnson County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(200, 197, 3, 'OCRL-DUBLN', 'Laurens County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(201, 197, 3, 'OCRL-SANDR', 'Rosa M. Tarbutton Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(202, 197, 3, 'OCRL-SOPER', 'Treutlen County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(203, 1, 2, 'OHOOP', 'Ohoopee Regional Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(204, 203, 3, 'OHOOP-VIDT', 'Vidalia-Toombs County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(205, 203, 3, 'OHOOP-MONT', 'Montgomery County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(206, 203, 3, 'OHOOP-LYON', 'Nelle Brown Memorial [Lyon]');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(207, 203, 3, 'OHOOP-TATR', 'Reidsville / Tattnall County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(208, 203, 3, 'OHOOP-TATG', 'Glennville / Tattnall County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(209, 203, 3, 'OHOOP-BKML', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(210, 203, 3, 'OHOOP-LADS', 'Ladson Genealogical Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(211, 1, 2, 'BROOK', 'Brooks County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(212, 211, 3, 'BROOK-HQ', 'Brooks County Public Library Headquarters');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(213, 1, 2, 'CRLS', 'Chestatee Regional Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(214, 213, 3, 'CRLS-LMPKN', 'Lumpkin County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(215, 213, 3, 'CRLS-DAWSN', 'Dawson County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(216, 1, 2, 'CHRL', 'Cherokee Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(217, 216, 3, 'CHRL-LW', 'LaFayette-Walker County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(218, 216, 3, 'CHRL-ROSS', 'Rossville Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(219, 216, 3, 'CHRL-CHICK', 'Chickamauga Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(220, 216, 3, 'CHRL-DADE', 'Dade County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(221, 1, 2, 'BTRL', 'Bartram Trail Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(222, 221, 3, 'BTRL-MWL', 'Mary Willis Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(223, 221, 3, 'BTRL-MCD', 'Thomson-McDuffie County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(224, 221, 3, 'BTRL-TCL', 'Taliaferro County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(225, 221, 3, 'BTRL-BKM', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(226, 1, 2, 'JCL', 'Jefferson County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(227, 226, 3, 'JCL-LVILLE', 'Louisville Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(228, 226, 3, 'JCL-WRENS', 'McCollum Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(229, 226, 3, 'JCL-WADLEY', 'Wadley Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(230, 226, 3, 'JCL-BKMOBL', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(231, 1, 2, 'NCLS', 'Newton County Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(232, 231, 3, 'NCLS-COVTN', 'Covington Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(233, 1, 2, 'MGRL', 'Middle Georgia Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(234, 233, 3, 'MGRL-WA', 'Washington Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(235, 233, 3, 'MGRL-SH', 'Shurling Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(236, 233, 3, 'MGRL-RV', 'Riverside Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(237, 233, 3, 'MGRL-LA', 'Charles A. Lanford Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(238, 233, 3, 'MGRL-WB', 'West Bibb Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(239, 233, 3, 'MGRL-RO', 'Crawford County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(240, 233, 3, 'MGRL-JO', 'Jones County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(241, 233, 3, 'MGRL-ID', 'Ideal Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(242, 233, 3, 'MGRL-OG', 'Oglethorpe Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(243, 233, 3, 'MGRL-MA', 'Marshallville Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(244, 233, 3, 'MGRL-MO', 'Montezuma Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(245, 233, 3, 'MGRL-TW', 'Twiggs County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(246, 233, 3, 'MGRL-EW', 'East Wilkinson County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(247, 233, 3, 'MGRL-GO', 'Gordon Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(248, 233, 3, 'MGRL-GH', 'Genealogical and Historical Department');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(249, 233, 3, 'MGRL-LB', 'Library for the Blind & Physically Handicapped');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(250, 233, 3, 'MGRL-MM', 'Miss Martha Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(251, 233, 3, 'MGRL-RE', 'Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(252, 1, 2, 'KRLS', 'Kinchafoonee Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(253, 252, 3, 'KRLS-AR', 'Arlington Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(254, 252, 3, 'KRLS-CA', 'Calhoun County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(255, 252, 3, 'KRLS-CL', 'Clay County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(256, 252, 3, 'KRLS-RA', 'Randolph County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(257, 252, 3, 'KRLS-TE', 'Terrell County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(258, 252, 3, 'KRLS-WE', 'Webster County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(259, 252, 3, 'KRLS-KI', 'Kinchafoonee Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(260, 1, 2, 'DTRL', 'Desoto Trail Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(261, 260, 3, 'DTRL-CAMI', 'Camilla-DeSoto Trail Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(262, 346, 3, 'WORTH-SYLV', 'Sylvester-Margaret Jones Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(263, 260, 3, 'DTRL-BLAK', 'Blakely-Maddox Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(264, 260, 3, 'DTRL-PELH', 'Pelham-Pelham Carnegie Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(265, 260, 3, 'DTRL-BAKR', 'Baker County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(266, 260, 3, 'DTRL-JAKN', 'Jakin Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(267, 1, 2, 'CPRL', 'Coastal Plain Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(268, 267, 3, 'CPRL-A', 'Victoria Evans Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(269, 267, 3, 'CPRL-B', 'Carrie Dorsey Perry Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(270, 267, 3, 'CPRL-C', 'Cook County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(271, 267, 3, 'CPRL-L', 'Irwin County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(272, 267, 3, 'CPRL-R', 'Headquarters Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(273, 267, 3, 'CPRL-T', 'Tifton-Tift County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(274, 267, 3, 'CPRL-BKM', 'Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(275, 1, 2, 'ECGR', 'East Central Georgia Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(276, 275, 3, 'ECGR-MAIN', 'Augusta-Richmond Co. Public Lib.');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(278, 275, 3, 'ECGR-APPBY', 'Appleby Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(279, 275, 3, 'ECGR-FRMAN', 'Friedman Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(280, 275, 3, 'ECGR-MXWLL', 'Maxwell Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(281, 275, 3, 'ECGR-WALLC', 'Wallace Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(282, 275, 3, 'ECGR-DIAML', 'Diamond Lakes Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(284, 275, 3, 'ECGR-BURKE', 'Burke County Library,  Waynesboro');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(285, 275, 3, 'ECGR-MIDVL', 'Midville Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(286, 275, 3, 'ECGR-SRDIS', 'Sardis Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(287, 275, 3, 'ECGR-CCO', 'Columbia County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(288, 275, 3, 'ECGR-HARLM', 'Harlem Branch library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(289, 275, 3, 'ECGR-EUCHE', 'Euchee Creek Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(290, 275, 3, 'ECGR-WARRN', 'Warren County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(291, 275, 3, 'ECGR-LINCN', 'Lincoln County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(292, 1, 2, 'ORLS', 'Ocmulgee Regional Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(293, 292, 3, 'ORLS-HDQ', 'Ocmulgee Regional Library Headquarters');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(294, 292, 3, 'ORLS-TEL', 'Telfair County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(295, 292, 3, 'ORLS-BLE', 'Bleckley County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(296, 292, 3, 'ORLS-WIL', 'Wilcox County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(297, 292, 3, 'ORLS-PUL', 'Pulaski County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(298, 292, 3, 'ORLS-WHE', 'Wheeler County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(299, 292, 3, 'ORLS-EXT', 'Extension Services');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(300, 140, 3, 'HCLS-FV', 'Fairview Branch');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(301, 1, 2, 'SGRL', 'South Georgia Regional Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(303, 301, 3, 'SGRL-VALDOSTA', 'Valdosta-Lowndes County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(304, 301, 3, 'SGRL-SSIDE', 'McMullen Southside Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(305, 301, 3, 'SGRL-HAHIRA', 'Salter Hahira Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(306, 301, 3, 'SGRL-ECHOLS', 'Allen Statenville Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(307, 301, 3, 'SGRL-LAKES', 'Johnston Lakes Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(308, 301, 3, 'SGRL-LANIER', 'Miller Lakeland Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(309, 301, 3, 'SGRL-TBC', 'Talking Book Center');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(310, 301, 3, 'SGRL-BOOKVAN', 'Bookvan');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(311, 1, 2, 'TCPLS', 'Thomas County Public Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(312, 311, 3, 'TCPLS-THOMAS', 'Thomas County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(313, 311, 3, 'TCPLS-BOS', 'Boston Carnegie Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(314, 311, 3, 'TCPLS-COOL', 'Coolidge Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(315, 311, 3, 'TCPLS-OCH', 'Gladys M. Clark Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(316, 311, 3, 'TCPLS-MEIGS', 'Meigs Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(317, 311, 3, 'TCPLS-PAVO', 'Pavo Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(318, 260, 3, 'DTRL-SALECITY', 'Sale City Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(319, 163, 3, 'WGRL-WB', 'Whitesburg Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(320, 163, 3, 'WGRL-MZ', 'Mount Zion Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(321, 1, 2, 'THRL', 'Troup-Harris Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(322, 321, 3, 'THRL-HOG', 'Hogansville Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(323, 321, 3, 'THRL-HC', 'Harris County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(324, 321, 3, 'THRL-WMS', 'Williams Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(326, 321, 3, 'THRL-LAG', 'LaGrange Memorial Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(328, 1, 2, 'LBRLS', 'Lake Blackshear Regional Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(329, 328, 3, 'LBRLS-LB', 'Lake Blackshear Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(330, 328, 3, 'LBRLS-CORD', 'Cordele-Crisp Carnegie Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(331, 328, 3, 'LBRLS-BYRM', 'Byromville Public Library ');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(333, 328, 3, 'LBRLS-DOOLY', 'Dooly County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(335, 328, 3, 'LBRLS-UNAD', 'Elizabeth Harris Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(336, 328, 3, 'LBRLS-SCH', 'Schley County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(337, 328, 3, 'LBRLS-BKM', 'Lake Blackshear Regional Library Bookmobile');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(340, 231, 3, 'NCLS-NEWBRN', 'Newborn Library Service Outlet');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(342, 231, 3, 'NCLS-PORTER', 'Porter Memorial Branch Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(343, 252, 3, 'KRLS-QU', 'Quitman County Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(344, 1, 2, 'CCL', 'Catoosa County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(345, 344, 3, 'CCL-RING', 'Catoosa County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(346, 1, 2, 'WORTH', 'Worth County Library System');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(347, 55, 3, 'TLLS-FAL', 'Floride Allen Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(349, 163, 3, 'WGRL-EP', 'Ephesus Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(350, 145, 3, 'NEG-SYSTEM', 'System Offices');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(351, 156, 3, 'HALL-TEMP', 'HALL-TEMP');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(352, 163, 3, 'WGRL-CR', 'Crossroads Public Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(353, 1, 2, 'NGRL', 'Northwest Georgia Regional Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(354, 353, 3, 'NGRL-CG', 'Calhoun-Gordon County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(355, 353, 3, 'NGRL-DW', 'Dalton-Whitfield Library ');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(356, 353, 3, 'NGRL-CM', 'Chatsworth Murray County Library');
INSERT INTO actor.org_unit (id, parent_ou, ou_type, shortname, name) VALUES
	(357, 46, 3, 'URRLS-WG', 'Walnut Grove Library');
