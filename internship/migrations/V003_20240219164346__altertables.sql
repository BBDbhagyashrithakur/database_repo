ALTER TABLE tpo add FOREIGN KEY(college_id) REFERENCES college(college_id)

ALTER TABLE student add FOREIGN KEY(college_id) REFERENCES college(college_id)

ALTER TABLE job_post add FOREIGN KEY(company_id) REFERENCES company(company_id)

ALTER TABLE application add FOREIGN KEY(job_id) REFERENCES job_post(job_id)

ALTER TABLE application add FOREIGN KEY(student_id) REFERENCES student(student_id)