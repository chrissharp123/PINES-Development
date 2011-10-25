--Un-comment each section as appropriate

-- If the unique index fails, uncomment the following to create
-- a regular index that will help find the duplicates in a hurry:
--CREATE INDEX by_heading_and_thesaurus
--    ON authority.record_entry (authority.normalize_heading(marc))
--    WHERE deleted IS FALSE or deleted = FALSE
--;

-- Then find the duplicates like so to get an idea of how much
-- pain you're looking at to clean things up:
SELECT authority.normalize_heading(marc), id
    FROM authority.record_entry
    WHERE authority.normalize_heading(marc) IN (
        SELECT authority.normalize_heading(marc)
        FROM authority.record_entry
        GROUP BY authority.normalize_heading(marc)
        HAVING COUNT(*) > 1
    )
ORDER BY 1
;

-- Once you have removed the duplicates and the CREATE UNIQUE INDEX
-- statement succeeds, drop the temporary index to avoid unnecessary
-- duplication:
-- DROP INDEX authority.by_heading_and_thesaurus;

