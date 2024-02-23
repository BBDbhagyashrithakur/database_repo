CREATE VIEW CollegePlacementCountView AS
SELECT
    C.CollegeId,
    C.InstituteId,
    C.AddressId,
    C.CollegeName,
    C.Email,
    C.PhoneNumber,
    C.CreatedDate AS CollegeCreatedDate,
    C.ModifiedDate AS CollegeModifiedDate,
    COUNT(P.PlacementOffId) AS PlacementOfficerCount
FROM
    College C
LEFT JOIN
    PlacementOfficer P ON C.CollegeId = P.CollegeId
GROUP BY
    C.CollegeId, C.InstituteId, C.AddressId, C.CollegeName, C.Email, C.PhoneNumber, C.CreatedDate, C.ModifiedDate;
