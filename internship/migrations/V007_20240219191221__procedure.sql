CREATE PROCEDURE InsertaddressAndcollege
    @BuildingNumber INT,
    @CityId INT,
    @StreetName VARCHAR(255),
    @Locality VARCHAR(255),
    @CollegeName VARCHAR(255),
    @Email VARCHAR(100),
    @PhoneNumber VARCHAR(15)
AS
BEGIN
    SET NOCOUNT ON;
BEGIN TRY
	START TRANSACTION;
    DECLARE @AddressID INT;
    INSERT INTO address (BuildingNumber, CityId, StreetName, Locality)
    VALUES (@BuildingNumber, @CityId, @StreetName, @Locality);
 
    -- Get the AddressID of the inserted address
    SELECT @AddressID = SCOPE_IDENTITY();

    INSERT INTO college (CollegeName, Email, PhoneNumber)
    VALUES (@CollegeName, @Email, @PhoneNumber);
 
COMMIT;
    PRINT 'Data inserted successfully.';
 
END TRY
BEGIN CATCH
	 ROLLBACK;
  PRINT 'Error is occured';
 
END CATCH
END;
