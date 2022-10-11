SET search_path = 'hangfire';
--
-- Table structure for table `Schema`
--

ALTER TABLE "lock"
    ALTER COLUMN "resource" TYPE TEXT;

RESET search_path;