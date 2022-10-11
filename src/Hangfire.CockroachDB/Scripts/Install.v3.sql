CREATE SCHEMA "hangfire";

SET search_path = 'hangfire';
--
-- Table structure for table `Schema`
--

CREATE TABLE IF NOT EXISTS "schema"
(
    "version" INT NOT NULL,
    PRIMARY KEY ("version")
);

INSERT INTO "schema"("version")
VALUES ('1');

--
-- Table structure for table `Counter`
--

CREATE TABLE IF NOT EXISTS "counter"
(
    "id"       SERIAL       NOT NULL,
    "key"      VARCHAR(100) NOT NULL,
    "value"    SMALLINT     NOT NULL,
    "expireat" TIMESTAMP    NULL,
    PRIMARY KEY ("id")
);

CREATE INDEX "ix_hangfire_counter_key" ON "counter" ("key");

--
-- Table structure for table `Hash`
--

CREATE TABLE IF NOT EXISTS "hash"
(
    "id"       SERIAL       NOT NULL,
    "key"      VARCHAR(100) NOT NULL,
    "field"    VARCHAR(100) NOT NULL,
    "value"    TEXT         NULL,
    "expireat" TIMESTAMP    NULL,
    PRIMARY KEY ("id"),
    UNIQUE ("key", "field")
);


--
-- Table structure for table `Job`
--

CREATE TABLE IF NOT EXISTS "job"
(
    "id"             SERIAL      NOT NULL,
    "stateid"        INT         NULL,
    "statename"      VARCHAR(20) NULL,
    "invocationdata" TEXT        NOT NULL,
    "arguments"      TEXT        NOT NULL,
    "createdat"      TIMESTAMP   NOT NULL,
    "expireat"       TIMESTAMP   NULL,
    PRIMARY KEY ("id")
);

CREATE INDEX "ix_hangfire_job_statename" ON "job" ("statename");

--
-- Table structure for table `State`
--

CREATE TABLE IF NOT EXISTS "state"
(
    "id"        SERIAL       NOT NULL,
    "jobid"     INT          NOT NULL,
    "name"      VARCHAR(20)  NOT NULL,
    "reason"    VARCHAR(100) NULL,
    "createdat" TIMESTAMP    NOT NULL,
    "data"      TEXT         NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("jobid") REFERENCES "job" ("id") ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX "ix_hangfire_state_jobid" ON "state" ("jobid");


--
-- Table structure for table `JobQueue`
--

CREATE TABLE IF NOT EXISTS "jobqueue"
(
    "id"        SERIAL      NOT NULL,
    "jobid"     INT         NOT NULL,
    "queue"     VARCHAR(20) NOT NULL,
    "fetchedat" TIMESTAMP   NULL,
    PRIMARY KEY ("id")
);

CREATE INDEX "ix_hangfire_jobqueue_queueandfetchedat" ON "jobqueue" ("queue", "fetchedat");

--
-- Table structure for table `List`
--

CREATE TABLE IF NOT EXISTS "list"
(
    "id"       SERIAL       NOT NULL,
    "key"      VARCHAR(100) NOT NULL,
    "value"    TEXT         NULL,
    "expireat" TIMESTAMP    NULL,
    PRIMARY KEY ("id")
);


--
-- Table structure for table `Server`
--

CREATE TABLE IF NOT EXISTS "server"
(
    "id"            VARCHAR(50) NOT NULL,
    "data"          TEXT        NULL,
    "lastheartbeat" TIMESTAMP   NOT NULL,
    PRIMARY KEY ("id")
);


--
-- Table structure for table `Set`
--

CREATE TABLE IF NOT EXISTS "set"
(
    "id"       SERIAL       NOT NULL,
    "key"      VARCHAR(100) NOT NULL,
    "score"    FLOAT8       NOT NULL,
    "value"    TEXT         NOT NULL,
    "expireat" TIMESTAMP    NULL,
    PRIMARY KEY ("id"),
    UNIQUE ("key", "value")
);


--
-- Table structure for table `JobParameter`
--

CREATE TABLE IF NOT EXISTS "jobparameter"
(
    "id"    SERIAL      NOT NULL,
    "jobid" INT         NOT NULL,
    "name"  VARCHAR(40) NOT NULL,
    "value" TEXT        NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("jobid") REFERENCES "job" ("id") ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX "ix_hangfire_jobparameter_jobidandname" ON "jobparameter" ("jobid", "name");

CREATE TABLE IF NOT EXISTS "lock"
(
    "resource" VARCHAR(100) NOT NULL,
    UNIQUE ("resource")
);

RESET search_path;