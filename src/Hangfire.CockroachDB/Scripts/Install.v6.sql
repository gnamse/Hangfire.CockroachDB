SET search_path = 'hangfire';
--
-- Adds indices, greatly speeds-up deleting old jobs.
--

CREATE INDEX "ix_hangfire_counter_expireat" ON "counter" ("expireat");

CREATE INDEX "ix_hangfire_jobqueue_jobidandqueue" ON "jobqueue" ("jobid", "queue");

RESET search_path;