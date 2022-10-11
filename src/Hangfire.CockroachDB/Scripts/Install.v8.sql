SET search_path = 'hangfire';
--
-- Table structure for table `Schema`
--

ALTER TABLE "counter"
    ALTER COLUMN value TYPE bigint;
ALTER TABLE "counter"
    DROP COLUMN updatecount RESTRICT;

RESET search_path;