INSERT INTO Country(CountryName) values("India"),("India"),("India"),("India"),("India");
 
INSERT INTO State(CountryId,StateName)VALUES(1,'Maharashtra'),(2,'Gujarat'),(3,'Bihar'),(4,'Aandhrapradesh'),(5,'Haryana');

INSERT INTO City(CountryId,StateName)VALUES(1,'Mumbai'),(2,'Surat'),(3,'Indore'),(2,'Rajkot'),(1,'Pune');

INSERT INTO Address (BuildingNumber,CityId,StreetName) values(1,10,1,'FC Road Mumbai'),(2,09,'Surat Road'),(3,08,'Indore road 101'),(4,04,'Shradha street'),
(5,03,'FC Road Pune')
 
INSERT INTO User(Id,FirstName,LastName,Email,MobileNumber) VALUES(1,'John','Saw','johnsaw123@gmail.com','9876543245'),(2,'Ram','Kumar','ramkumar34@gmail.com','9876543245'),
(3,'Ramesh','Rao','rameshrao23@gmail.com','9876543245'),(4,'Sujit','Bhatt','sujitbhatt93@gmail.com','9876543245'),(5,'Suresh','Kapoor','sureshkapoor13@gmail.com','9876543245');

INSERT INTO Student(StudentId,UserId,CollegeId,DepartmentId) values (1,1,1,1,'johnresume.pdf'),(2,2,2,2,'ramresume.pdf'),(3,3,3,3,'rameshresume.pdf'),(4,4,4,4,'sujitresume.pdf')
(5,5,5,5,'sureshresume.pdf')

INSERT INTO PlacementOfficer(UserId,CollegeId,JobId) VALUES(5,1,3),(3,4,2),(4,2,5),(2,4,3),(3,5,2);

INSERT INTO College(CollegeId,AddressId,InstituteId,CollegeName,Email,PhoneNumber) values(1,1,1,"IIT Kharagpur","iitkharagpur12@gmail.com","96548223658")
(2,2,2,"IIT Madras","iitmadras23@gmail.com","96582147365"),
(3,3,3,"IIT Delhi","iitdelhi234@gmail.com","98657412365"),
(4,4,4,"IIT Hyderabad","iithybad@gmail.com","9654783214"),
(5,5,5,"IIT Bombay","iitbombay@gmail.com","9652115201");

INSERT INTO InstituteType(InstituteType)values('IT'),('Management'),('Arts'),('Science And Commerce'),('Medical');

INSERT INTO Company(AddressId,CompanyName,Email,PhoneNumber) values ('BBD','bbd@.com','4576543423'),('TCS','tcs@.com','5464738343'),('INFOSYS','infosys.com','7464533242'),('HEXAWARE','hexaware.@com','9876786798'), ('ACCENTURE','accenture.@com','6454879606');

INSERT INTO CampanyType(CampanyType)values('Hybrid'),('Non IT'),('IT'),('Service base'),('Product Base');

INSERT INTO Jobpost(CompanyId,SkillId,Title,Role,Description,JobLocation) value(1,2,'Software Developer','expertise knowledge of software development','Mumabi'),
 (2,3,'Tester','expertise knowledge of software testing','pune'),(3,4,'Software Developer','Developer','expertise knowledge of software development','surat'),
(4,5,'Data Analytics','expertise knowledge of data analysis','surat'),values(2,4,'databse administrator','expertise knowledge of data operations','Mumbai'); 
     
INSERT INTO Application(AppliacationId,JobId,StudentId,PlacementOffId,DateApllied) values(1,1,1,,1,"2024-01-15"),(2,2,2,,2,"2024-01-14"),
(3,3,3,,3,'2024-12-13'),
(4,4,4,,4,'2024-02-10'),
(5,5,5,,5,'2024-02-02');

INSERT INTO Department(DepartmentId,Name) VALUES(1,"Computer Science and Engineering"),
(2,'Industrial Engineering and Management'),
(3,'Mechanical Engineering'),
(4,'CSE'),
(5,'Computer Science & Engineering');
 
INSERT INTO Skills(skills,SkillName) VALUES(1,'Java'),(2,'Javascript'),(3,'Python'), (4,'React'), (5,'NodeJs');

INSERT INTO ApplicationStatus(Status)values('Select'),('Reject'),('Select'),('Reject'),('Select');
