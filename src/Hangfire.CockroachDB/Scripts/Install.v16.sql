SET search_path = 'hangfire';

-- Note: job_id_seq is already bigint as per migration script v14
SET search_path = 'hangfire';

CREATE SEQUENCE counter_id_seq;
CREATE SEQUENCE hash_id_seq;
CREATE SEQUENCE jobparameter_id_seq;
CREATE SEQUENCE jobqueue_id_seq;
CREATE SEQUENCE list_id_seq;
CREATE SEQUENCE set_id_seq;
CREATE SEQUENCE state_id_seq;

ALTER SEQUENCE hangfire.counter_id_seq MAXVALUE 9223372036854775807;
ALTER SEQUENCE hangfire.hash_id_seq MAXVALUE 9223372036854775807;
ALTER SEQUENCE hangfire.jobparameter_id_seq MAXVALUE 9223372036854775807;
ALTER SEQUENCE hangfire.jobqueue_id_seq MAXVALUE 9223372036854775807;
ALTER SEQUENCE hangfire.list_id_seq MAXVALUE 9223372036854775807;
ALTER SEQUENCE hangfire.set_id_seq MAXVALUE 9223372036854775807;
ALTER SEQUENCE hangfire.state_id_seq MAXVALUE 9223372036854775807;

RESET search_path;
