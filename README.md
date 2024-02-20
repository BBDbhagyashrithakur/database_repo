# database_repo

![dataflow](https://github.com/BBDbhagyashrithakur/database_repo/assets/159768548/960322a2-dfa8-4e3e-8c48-d064d8645890)
 ![flow_relations](https://github.com/BBDbhagyashrithakur/database_repo/assets/159768548/e5cfef96-05fa-45f6-825b-0067ca3109e6)

 ## View to display college and tpo information

CREATE VIEW college_tpo_view
AS
SELECT 
    c.college_id, c.college_name, c.contact,
    t.tpo_id, t.first_name, t.last_name, t.contact AS tpo_contact, t.email AS tpo_email,t.city_name, t.postal_code
FROM college c
JOIN tpo t ON c.college_id = t.college_id;

# calling view
select * from college_tpo_view;

![image](https://github.com/BBDbhagyashrithakur/database_repo/assets/159768548/4815986b-b71c-4ea6-b182-cbe6f2f2f9ce)


 ## Procedure to display student with company details.

CREATE PROCEDURE InsertData
    @table_name NVARCHAR(50),
    @first_name VARCHAR(50),
    @last_name VARCHAR(50),
    @contact VARCHAR(15),
    @email VARCHAR(255),
    @department VARCHAR(255),
    @resume TEXT,
    @college_id INT,
    @city_name VARCHAR(255) = NULL,
    @postal_code VARCHAR(15) = NULL,
    @location VARCHAR(255) = NULL,
    @industry_type VARCHAR(255) = NULL,
    @job_title VARCHAR(255) = NULL,
    @job_role VARCHAR(255) = NULL,
    @job_desc VARCHAR(255) = NULL
AS
BEGIN
    IF @table_name = 'tpo'
    BEGIN
        INSERT INTO tpo (first_name, last_name, contact, email, department, city_name, postal_code, college_id)
        VALUES (@first_name, @last_name, @contact, @email, @department, @city_name, @postal_code, @college_id);
    END
    ELSE IF @table_name = 'student'
    BEGIN
        INSERT INTO student (first_name, last_name, contact, email, department, resume, college_id)
        VALUES (@first_name, @last_name, @contact, @email, @department, @resume, @college_id);
    END
    ELSE IF @table_name = 'company'
    BEGIN
        INSERT INTO company (company_name, contact, email, location, industry_type)
        VALUES (@first_name, @contact, @email, @location, @industry_type);
    END
    ELSE IF @table_name = 'job_post'
    BEGIN
        INSERT INTO job_post (job_title, job_role, job_desc, company_id)
        VALUES (@job_title, @job_role, @job_desc, @college_id);
    END
END


# calling procedure
EXEC InsertData 
    @table_name = 'student',
    @first_name = 'John',
    @last_name = 'Doe',
    @contact = '1234567890',
    @email = 'john.doe@example.com',
    @department = 'Computer Science',
    @resume = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    @college_id = 1;

    SELECT * FROM student WHERE first_name = 'John' AND last_name = 'Doe';

![Proceduredata](https://github.com/BBDbhagyashrithakur/database_repo/assets/159768548/935fe7ae-602a-43f8-ab9c-360ce1796af4)


## Function to display student information by their name

	CREATE FUNCTION GetCombinedData()
RETURNS TABLE
AS
RETURN
(
    SELECT tpo.first_name AS tpo_first_name, tpo.last_name AS tpo_last_name,
           tpo.contact AS tpo_contact, tpo.email AS tpo_email,
           tpo.department AS tpo_department, tpo.city_name AS tpo_city_name,
           tpo.postal_code AS tpo_postal_code, tpo.college_id AS tpo_college_id,
           student.first_name AS student_first_name, student.last_name AS student_last_name,
           student.contact AS student_contact, student.email AS student_email,
           student.department AS student_department, student.resume AS student_resume,
           student.college_id AS student_college_id,
           company.company_name AS company_name, company.contact AS company_contact,
           company.email AS company_email, company.location AS company_location,
           company.industry_type AS company_industry_type,
           job_post.job_title AS job_title, job_post.job_role AS job_role,
           job_post.job_desc AS job_desc, job_post.company_id AS company_id
    FROM tpo
    JOIN student ON tpo.college_id = student.college_id
    JOIN company ON tpo.college_id = company.company_id
    JOIN job_post ON company.company_id = job_post.company_id
);

# calling function
select *from GetCombinedData()

![Functiondata](https://github.com/BBDbhagyashrithakur/database_repo/assets/159768548/536283ff-28b5-41dc-8a87-cfd70f469a48)



## Scalar function to count number of student

CREATE FUNCTION GetStudentsByCount()
RETURNS TABLE
AS
RETURN
( 
SELECT count(student_id) AS NumStudents FROM Student
);

# calling scalar function 

select * from GetStudentsByCount();

![image](https://github.com/BBDbhagyashrithakur/database_repo/assets/159768548/99f407e8-57ee-4941-99fa-0e65d22605cb)



## Features --
 
- Login
- Registration
-student Profile
- TPO profile
- Student Application
- TPO Approch
