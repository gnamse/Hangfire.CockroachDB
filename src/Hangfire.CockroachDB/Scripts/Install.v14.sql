SET search_path = 'hangfire';

CREATE SEQUENCE job_id_seq;
ALTER SEQUENCE hangfire.job_id_seq MAXVALUE 9223372036854775807;

RESET search_path;
