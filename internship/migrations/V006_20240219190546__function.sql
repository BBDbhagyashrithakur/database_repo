CREATE FUNCTION GetApplicationsByDate (@SearchDate DATE)
RETURNS TABLE
AS
RETURN
(
    SELECT
        A.ApplicationId,
        A.JobId,
        A.StudentId,
        A.DateApplied,
        S.UserId,
        S.DepartmentId,
        S.Resume
    FROM
        application A
    JOIN
        student S ON A.StudentId = S.StudentId
    WHERE
        A.DateApplied = @SearchDate
);
