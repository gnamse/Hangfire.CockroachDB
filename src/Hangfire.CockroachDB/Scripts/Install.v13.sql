SET search_path = 'hangfire';

create index "jobqueue_queue_fetchat_jobId" on hangfire.jobqueue (queue, fetchedat, jobid);

RESET search_path;
