INSERT INTO job_applied(
    job_id PRIMARY KEY,
    application_sent_date,
    custom_resume,
    resume_file_name,
    cover_letter_sent,
    cover_letter_file_name,
    status
)
VALUES(1,'2024-02-01',true,'resume_01.pdf',true,'cover_letter_01.pdf','submitted'),
      (2,'2024-02-02',false,'resume_02.pdf',true,NULL,'submitted'),
      (3,'2024-02-03',true,'resume_03.pdf',true,'cover_letter_03.pdf','ghosted'),
      (4,'2024-02-04',true,'resume_04.pdf',false,'cover_letter_04.pdf','rejected'),
      (5,'2024-02-05',false,'resume_05.pdf',false,'cover_letter_05.pdf','submitted');


select* from job_applied;