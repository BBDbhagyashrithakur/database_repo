# database_repo



 -- View to display college and tpo information

CREATE VIEW college_tpo_view
AS
SELECT 
    c.college_id, c.college_name, c.contact,
    t.tpo_id, t.first_name, t.last_name, t.contact AS tpo_contact, t.email AS tpo_email,t.city_name, t.zip_code
FROM college c
JOIN tpo t ON c.college_id = t.college_id;
select * from college_tpo_view;


--calling view
select * from college_tpo_view;


-- Procedure to display student with company details.

CREATE PROCEDURE GetStudentCompanyDetails
AS
BEGIN
    SELECT 
        s.student_id, s.first_name AS student_first_name, s.last_name AS student_last_name, s.contact AS student_contact, s.email AS student_email, s.department AS student_department, s.resume,
        co.company_id, co.company_name, co.contact AS company_contact, co.email AS company_email, co.location AS company_location, co.industry_type
    FROM student s
    JOIN company co ON s.college_id = co.company_id;
END;

--calling procedure
EXEC  GetStudentCompanyDetails



-- Function to display student information by their name

CREATE FUNCTION GetStudentsByName(@first_name VARCHAR(255))
RETURNS TABLE
AS
RETURN
(
    SELECT s.student_id, s.first_name, s.last_name, s.email
    FROM student s
    WHERE s.first_name = @first_name
);

--calling function
select * from GetStudentsByName('shree')


-- Scalar function to count number of student

CREATE FUNCTION GetStudentsByCount()
RETURNS TABLE
AS
RETURN
( 
SELECT count(student_id) AS NumStudents FROM Student
);

--calling function 

select * from GetStudentsByCount();


## Features
 
- Login
- Registration
-student Profile
- TPO profile
- Student Application
- TPO Approch
- Comapny post
