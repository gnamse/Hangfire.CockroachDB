SET search_path = 'hangfire';
--
-- Table structure for table `Schema`
--

ALTER TABLE "lock"
    ADD COLUMN acquired timestamp without time zone;

RESET search_path;