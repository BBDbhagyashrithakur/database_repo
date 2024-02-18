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
