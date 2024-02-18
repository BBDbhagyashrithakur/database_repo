CREATE PROCEDURE GetStudentCompanyDetails
AS
BEGIN
    SELECT 
        s.student_id, s.first_name AS student_first_name, s.last_name AS student_last_name, s.contact AS student_contact, s.email AS student_email, s.department AS student_department, s.resume,
        co.company_id, co.company_name, co.contact AS company_contact, co.email AS company_email, co.location AS company_location, co.industry_type
    FROM student s
    JOIN company co ON s.college_id = co.company_id;
END;