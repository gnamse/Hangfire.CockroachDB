SET search_path = 'hangfire';

CREATE INDEX ix_hangfire_job_expireat ON "job" (expireat);
CREATE INDEX ix_hangfire_list_expireat ON "list" (expireat);
CREATE INDEX ix_hangfire_set_expireat ON "set" (expireat);
CREATE INDEX ix_hangfire_hash_expireat ON "hash" (expireat);

RESET search_path;
