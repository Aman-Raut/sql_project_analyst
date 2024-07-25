ALTER TABLE job_applied
Add contact VARCHAR(50);

select* from job_applied;



ALTER TABLE job_applied
RENAME COLUMN contact TO contact_name;

SELECT * FROM job_applied;



ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE TEXT;

SELECT * FROM job_applied;



ALTER TABLE job_applied
Drop COLUMN contact_name;

SELECT * FROM job_applied;