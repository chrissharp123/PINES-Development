

DROP SCHEMA serial CASCADE;

BEGIN;

CREATE SCHEMA serial;

CREATE TABLE serial.record_entry (
	id		BIGSERIAL	PRIMARY KEY,
	record		BIGINT		REFERENCES biblio.record_entry (id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED,
	owning_lib	INT		NOT NULL DEFAULT 1 REFERENCES actor.org_unit (id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED,
	creator		INT		NOT NULL DEFAULT 1,
	editor		INT		NOT NULL DEFAULT 1,
	source		INT,
	create_date	TIMESTAMP WITH TIME ZONE	NOT NULL DEFAULT now(),
	edit_date	TIMESTAMP WITH TIME ZONE	NOT NULL DEFAULT now(),
	active		BOOL		NOT NULL DEFAULT TRUE,
	deleted		BOOL		NOT NULL DEFAULT FALSE,
	marc		TEXT		NOT NULL,
	last_xact_id	TEXT		NOT NULL
);
CREATE INDEX serial_record_entry_creator_idx ON serial.record_entry ( creator );
CREATE INDEX serial_record_entry_editor_idx ON serial.record_entry ( editor );
CREATE INDEX serial_record_entry_owning_lib_idx ON serial.record_entry ( owning_lib, deleted );

CREATE RULE protect_mfhd_delete AS ON DELETE TO serial.record_entry DO INSTEAD UPDATE serial.record_entry SET deleted = true WHERE old.id = serial.record_entry.id;

CREATE TABLE serial.subscription (
	id		SERIAL	PRIMARY KEY,
	callnumber	BIGINT	REFERENCES asset.call_number (id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED,
	uri		INT	REFERENCES asset.uri (id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED,
	start_date	DATE	NOT NULL,
	end_date	DATE	-- interpret NULL as current subscription 
);

CREATE TABLE serial.binding_unit (
	id		SERIAL	PRIMARY KEY,
	subscription	INT	NOT NULL REFERENCES serial.subscription (id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED,
	label		TEXT	NOT NULL,
	CONSTRAINT bu_label_once_per_sub UNIQUE (subscription, label)
);

CREATE TABLE serial.issuance (
	id		SERIAL	PRIMARY KEY,
	subscription	INT	NOT NULL REFERENCES serial.subscription (id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED,
	target_copy	BIGINT	REFERENCES asset.copy (id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED,
	location	BIGINT	REFERENCES asset.copy_location(id) DEFERRABLE INITIALLY DEFERRED,
	binding_unit	INT	REFERENCES serial.binding_unit (id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED,
	label		TEXT
);

CREATE TABLE serial.bib_summary (
	id			SERIAL	PRIMARY KEY,
	subscription		INT	UNIQUE NOT NULL REFERENCES serial.subscription (id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED,
	generated_coverage	TEXT	NOT NULL,
	textual_holdings	TEXT
);

CREATE TABLE serial.sup_summary (
	id			SERIAL	PRIMARY KEY,
	subscription		INT	UNIQUE NOT NULL REFERENCES serial.subscription (id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED,
	generated_coverage	TEXT	NOT NULL,
	textual_holdings	TEXT
);

CREATE TABLE serial.index_summary (
	id			SERIAL	PRIMARY KEY,
	subscription		INT	UNIQUE NOT NULL REFERENCES serial.subscription (id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED,
	generated_coverage	TEXT	NOT NULL,
	textual_holdings	TEXT
);

COMMIT;

