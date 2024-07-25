CREATE table january_jobs as
    select * FROM job_postings_fact
    WHERE
    EXTRACT(MONTH from job_posted_date) = 1
    ;

CREATE table february_jobs as
    select * FROM job_postings_fact
    WHERE
    EXTRACT(MONTH from job_posted_date) = 2
    ;

CREATE table march_jobs as
    select * FROM job_postings_fact
    WHERE
    EXTRACT(MONTH from job_posted_date) = 3
    ;

