CREATE TABLE application
(
appliacation_id  INT IDENTITY(1,1) PRIMARY KEY  NOT NULL,
job_id INT FOREIGN KEY REFERENCES job_post(job_id) NOT NULL,
student_id INT FOREIGN KEY REFERENCES student(student_id) NOT NULL,
date_apllied DATE NOT NULL
);
select * from application;