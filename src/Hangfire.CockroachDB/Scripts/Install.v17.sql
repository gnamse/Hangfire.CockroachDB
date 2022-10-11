SET search_path = 'hangfire';

CREATE INDEX IF NOT EXISTS ix_hangfire_set_key_score ON "set" (key, score);

RESET search_path;
