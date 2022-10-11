SET search_path = 'hangfire';
--
-- Table structure for table `Schema`
--

ALTER TABLE "jobqueue"
    ALTER COLUMN "queue" TYPE TEXT;

RESET search_path;