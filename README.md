# database_repo

![database_uml_diagram](https://github.com/BBDbhagyashrithakur/database_repo/assets/159768548/1e841aaa-4905-4294-8883-ce4f6c97e28f)




 ## View to display college and tpo information

CREATE VIEW college_tpo_view
AS
SELECT 
    c.college_id, c.college_name, c.contact,
    t.tpo_id, t.first_name, t.last_name, t.contact AS tpo_contact, t.email AS tpo_email,t.city_name, t.zip_code
FROM college c
JOIN tpo t ON c.college_id = t.college_id;

# calling view
select * from college_tpo_view;

![image](https://github.com/BBDbhagyashrithakur/database_repo/assets/159768548/b3d5e4d0-f12c-44a3-8e0f-e2a581ab11f3)



 ## Procedure to display student with company details.

CREATE PROCEDURE GetStudentCompanyDetails
AS
BEGIN
    SELECT 
        s.student_id, s.first_name AS student_first_name, s.last_name AS student_last_name, s.contact AS student_contact, s.email AS student_email, s.department AS student_department, s.resume,
        co.company_id, co.company_name, co.contact AS company_contact, co.email AS company_email, co.location AS company_location, co.industry_type
    FROM student s
    JOIN company co ON s.college_id = co.company_id;
END;

# calling procedure
EXEC  GetStudentCompanyDetails

![image](https://github.com/BBDbhagyashrithakur/database_repo/assets/159768548/e57f8ae0-ae93-4547-8fb9-2de0ea769cea)

## Function to display student information by their name

CREATE FUNCTION GetStudentsByName(@first_name VARCHAR(255))
RETURNS TABLE
AS
RETURN
(
    SELECT s.student_id, s.first_name, s.last_name, s.email
    FROM student s
    WHERE s.first_name = @first_name
);

# calling function
select * from GetStudentsByName('shree')

![image](https://github.com/BBDbhagyashrithakur/database_repo/assets/159768548/8af9876e-958d-4174-b1f5-bafe772663fc)


## Scaler function to count number of student

CREATE FUNCTION GetStudentsByCount()
RETURNS TABLE
AS
RETURN
( 
SELECT count(student_id) AS NumStudents FROM Student
);

# calling function 

select * from GetStudentsByCount();

![image](https://github.com/BBDbhagyashrithakur/database_repo/assets/159768548/99f407e8-57ee-4941-99fa-0e65d22605cb)



## Features
 
- Login
- Registration
-student Profile
- TPO profile
- Student Application
- TPO Approch
- Comapny post
