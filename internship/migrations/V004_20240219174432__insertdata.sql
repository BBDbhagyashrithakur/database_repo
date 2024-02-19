---college data

INSERT INTO college (college_name, contact)
VALUES
('Indian Institute of Technology','1234556780'),
('University of Delhi', '1289876543'),
('Indian Institute of Management Ahmedabad', '1287654321'),
('Anna University Chennai', '1988776655'),
('Jawaharlal Nehru University ', '1998887770');

--- tpo data
INSERT INTO tpo (first_name, last_name, contact, email, department, city_name, postal_code, college_id)
VALUES
('John', 'Doe', '1234567890', 'john.doe@example.com', 'Engineering', 'New York', '10001', 1),
('Alice', 'Smith', '1876543210', 'alice.smith@example.com', 'Computer Science', 'San Francisco', '94102', 2),
('Mike', 'Johnson', '1555555555', 'mike.johnson@example.com', 'Business Administration', 'Chicago', '60601', 3),
('Emily', 'Brown', '1998887770', 'emily.brown@example.com', 'Marketing', 'Los Angeles', '90001', 4),
('Sarah', 'Wilson', '1112223330', 'sarah.wilson@example.com', 'Finance', 'Houston', '77002', 5);


---student data
INSERT INTO student (first_name, last_name, contact, email, department, resume, college_id)
VALUES
('Emma', 'Johnson', '1245678990', 'emma.johnson@example.com', 'Computer Science', 'emma-resume.pdf', 1),
('Michael', 'Williams', '9876543210', 'michael.williams@example.com', 'Engineering', 'Michael-resume.pdf', 2),
('Sophia', 'Brown', '5555555555', 'sophia.brown@example.com', 'Sophia-resume.pdf', 3),
('Oliver', 'Davis', '9998887770', 'oliver.davis@example.com', 'Marketing', 'Oliver-resume.pdf', 4),
('Ava', 'Martinez', '1112223330', 'ava.martinez@example.com', 'Finance', 'Ava-resume.pdf', 5);

---company data
INSERT INTO company (company_name, contact, email, location, industry_type)
VALUES
('ABC Technologies', '1234567890', 'info@abc.com', 'New York', 'Technology'),
('XYZ Corporation', '9876543210', 'contact@xyzcorp.com', 'San Francisco', 'Finance'),
('PQR Solutions', '5555555555', 'info@pqrsolutions.com', 'Chicago', 'Consulting'),
('LMN Enterprises', '9998887770', 'contact@lmnent.com', 'Los Angeles', 'Retail'),
('RST Industries', '1112223330', 'info@rstindustries.com', 'Houston', 'Manufacturing');


---job_post data

INSERT INTO job_post (job_title, job_role, job_desc, company_id)
VALUES
('Software Engineer', 'Development', 'Design and implement software solutions', 1),
('Marketing Manager', 'Marketing', 'Develop and implement marketing strategies', 2),
('Sales Representative', 'Sales', 'Generate sales leads and close deals', 3),
('Financial Analyst', 'Finance', 'Analyze financial data and provide insights', 4),
('HR Coordinator', 'Human Resources', 'Manage HR processes and employee relations', 5);


---application data

INSERT INTO application (job_id, student_id, date_applied)
VALUES
(1, 1, '2022-01-15'),
(2, 2, '2022-01-16'),
(3, 3, '2022-01-17'),
(4, 4, '2022-01-18'),
(5, 5, '2022-01-19');

