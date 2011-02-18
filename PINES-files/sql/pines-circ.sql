BEGIN;
-- add no_fines rules
INSERT INTO config.rule_max_fine (name, amount, is_percent)  VALUES (
	'no_fines', '0.00', FALSE);
INSERT INTO config.rule_recuring_fine (name, high, normal, low, recurance) VALUES (
	'no_fines', '0.00', '0.00', '0.00', '1 day');

-- add circ_duration rules
INSERT INTO config.rule_circ_duration (name, extended, normal, shrt, max_renewals) VALUES (
	'3_months_1_renew', '3 mons', '3 mons', '3 mons', 1);
INSERT INTO config.rule_circ_duration (name, extended, normal, shrt, max_renewals) VALUES (
	'1_day_0_renew', '1 day', '1 day', '1 day', 0);

-- add PINES circ_modifiers
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'art', 'art', 'art', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'atlas', 'atlas', 'atlas', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'audiobook', 'audiobook', 'audiobook', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'av', 'av', 'av', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'bestseller', 'bestseller', 'bestseller', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'bestsellernh', 'bestsellernh', 'bestsellernh', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'book', 'book', 'book', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'cd', 'cd', 'cd', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'computer', 'Computer', 'Fake computer circ mod', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'dvd', 'dvd', 'dvd', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'dvd-long', 'dvd-long', 'dvd-long', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'dvd-mid', 'dvd-mid', 'dvd-mid', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'e-book', 'e-book', 'e-book', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'equip-long', 'equip-long', 'equip-long', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'equipment', 'equipment', 'equipment', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'eventpass', 'eventpass', 'eventpass', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'filmstrip', 'filmstrip', 'filmstrip', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'internet', 'Internet', 'Fake internet circ mod', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'kit', 'kit', 'kit', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'magazine', 'magazine', 'magazine', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'map', 'map', 'map', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'microform', 'microform', 'microform', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'music', 'music', 'music', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'new-av', 'new-av', 'new-av', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'record', 'record', 'record', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'software', 'software', 'software', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'softwrlong', 'softwrlong', 'softwrlong', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'talking book', 'talking book', 'talking book', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'toy', 'toy', 'toy', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'video', 'video', 'video', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'video-long', 'video-long', 'video-long', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'video-mid', 'video-mid', 'video-mid', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'videogame', 'videogame', 'videogame', '001', TRUE);
INSERT INTO config.circ_modifier (code, name, description, sip2_media_type, magnetic_media) VALUES (
	'videogamelong', 'videogamelong', 'videogamelong', '001', TRUE);

-- add basic circulation policies
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 'a', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 't', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 'g', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 1, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 'k', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 3, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 'r', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 'o', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 'p', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 'e', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 4, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 'f', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 4, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 'c', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 'd', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 'i', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 'j', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, NULL, 'm', NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'atlas', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 7, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'art', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 101, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'audiobook', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'av', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 7, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'new-av', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 4, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'bestseller', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 7, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'bestsellernh', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 7, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'book', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'cd', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'dvd', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 1, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'dvd-long', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'dvd-mid', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 7, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'e-book', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 4, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'equipment', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 102, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'equip-long', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 4, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'filmstrip', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'kit', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'internet', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 8, 101, 101, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'magazine', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'map', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 4, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'microform', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'music', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'record', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'software', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 7, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'softwrlong', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'videogame', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 7, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'videogamelong', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'talking book', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'video', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 1, 3, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'toy', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'video-long', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 10, 2, 3, NULL);
INSERT INTO config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, marc_type, marc_form, marc_vr_format, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, circulate, duration_rule, recurring_fine_rule, max_fine_rule, script_test) VALUES (
	DEFAULT, TRUE, 1, 1, 'video-mid', NULL, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, TRUE, 7, 3, 3, NULL);
COMMIT;
