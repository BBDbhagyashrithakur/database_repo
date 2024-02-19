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
        INSERT INTO tpo (first_name, last_name, contact, email, depeartment, city_name, postal_code, college_id)
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
