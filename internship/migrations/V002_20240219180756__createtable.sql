CREATE TABLE college
(
college_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
college_name VARCHAR(255) NOT NULL,
contact VARCHAR(15) NOT NULL,
);


CREATE TABLE tpo
(
tpo_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
contact VARCHAR(15) NOT NULL,
email VARCHAR(255) NOT NULL,
department VARCHAR(255) NOT NULL,
city_name VARCHAR(255) NOT NULL,
postal_code VARCHAR(15) NOT NULL,
college_id INT NOT NULL
);

CREATE TABLE student
(
  student_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  contact VARCHAR(15)  NOT NULL,
  email VARCHAR(255) NOT NULL,
  department VARCHAR(255) NOT NULL,
  resume TEXT NOT NULL,
    college_id INT NOT NULL
);

CREATE TABLE company
(
company_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  company_name VARCHAR(50) NOT NULL,
  contact VARCHAR(15) NOT NULL,
  email VARCHAR(255) NOT NULL,
  location varchar(255) NOT NULL,
  industry_type VARCHAR(255) NOT NULL
);

CREATE TABLE job_post
(
  job_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  job_title VARCHAR(255) NOT NULL,
  job_role VARCHAR(255)NOT NULL,
  job_desc  VARCHAR(255) NOT NULL,
  company_id INT NOT NULL
);

CREATE TABLE application
(
appliacation_id  INT IDENTITY(1,1) PRIMARY KEY  NOT NULL,
job_id INT NOT NULL,
student_id INT NOT NULL,
date_applied DATE NOT NULL
);
