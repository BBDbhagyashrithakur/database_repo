-- Scalar function to count number of student

CREATE FUNCTION GetStudentsByCount()
RETURNS TABLE
AS
RETURN
( 
SELECT count(student_id) AS NumStudents FROM Student
);


