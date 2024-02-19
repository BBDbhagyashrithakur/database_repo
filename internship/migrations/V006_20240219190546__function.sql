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