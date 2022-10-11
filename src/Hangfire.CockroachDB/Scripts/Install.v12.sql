SET search_path = 'hangfire';

ALTER TABLE "counter"
    ALTER COLUMN "key" TYPE TEXT;
ALTER TABLE "hash"
    ALTER COLUMN "key" TYPE TEXT;
ALTER TABLE "hash"
    ALTER COLUMN field TYPE TEXT;
ALTER TABLE "job"
    ALTER COLUMN statename TYPE TEXT;
ALTER TABLE "list"
    ALTER COLUMN "key" TYPE TEXT;
ALTER TABLE "server"
    ALTER COLUMN id TYPE TEXT;
ALTER TABLE "set"
    ALTER COLUMN "key" TYPE TEXT;
ALTER TABLE "jobparameter"
    ALTER COLUMN "name" TYPE TEXT;
ALTER TABLE "state"
    ALTER COLUMN "name" TYPE TEXT;
ALTER TABLE "state"
    ALTER COLUMN reason TYPE TEXT;

RESET search_path;