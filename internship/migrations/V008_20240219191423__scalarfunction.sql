CREATE FUNCTION GetStudentsByCount()
RETURNS TABLE
AS
RETURN
( 
SELECT count(StudentId) AS NumStudents FROM Student
);
