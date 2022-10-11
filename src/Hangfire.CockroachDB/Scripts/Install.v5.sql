SET search_path = 'hangfire';
--
-- Table structure for table `Schema`
--


ALTER TABLE "server"
    ALTER COLUMN "id" TYPE VARCHAR(100);

RESET search_path;