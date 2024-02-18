
CREATE TABLE student
(
  student_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  contact INT  NOT NULL,
  email VARCHAR(255) NOT NULL,
  department VARCHAR(255) NOT NULL,
  resume TEXT NOT NULL,
    college_id INT  FOREIGN KEY REFERENCES college(college_id) NOT NULL
);