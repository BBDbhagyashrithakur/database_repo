 CREATE TABLE job_post
(
  job_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  job_title VARCHAR(255),
  job_role VARCHAR(255),
  job_desc  VARCHAR(255),
  company_id INT FOREIGN KEY REFERENCES company(company_id) NOT NULL
);