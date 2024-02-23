ALTER TABLE State add FOREIGN KEY(CountryId) REFERENCES Country(CountryId);
ALTER TABLE City add FOREIGN KEY(StateId) REFERENCES State(StateId);
ALTER TABLE Address add FOREIGN KEY(CityId) REFERENCES City(CityId);

ALTER TABLE Student add FOREIGN KEY(UserId) REFERENCES User(Id)
ALTER TABLE Student add FOREIGN KEY(CollegeId) REFERENCES College(CollegeId)
ALTER TABLE Student add FOREIGN KEY(DepartmentId) REFERENCES Department(DepartmentId)

ALTER TABLE PlacementOfficer add FOREIGN KEY(UserId) REFERENCES User(Id)
ALTER TABLE PlacementOfficer add FOREIGN KEY(CollegeId) REFERENCES College(CollegeId)
ALTER TABLE PlacementOfficer add FOREIGN KEY(JobId) REFERENCES Jobpost(JobId)

 ALTER TABLE college add FOREIGN KEY(InstituteId) REFERENCES instituteType(InstituteId)
ALTER TABLE college add FOREIGN KEY(AddressId) REFERENCES address(AddressId)

ALTER TABLE Company add FOREIGN KEY(AddressId) REFERENCES Address(AddressId)
ALTER TABLE Company add FOREIGN KEY(CompanytypeId) REFERENCES Companytype(CompanytypeId)

ALTER TABLE Jobpost add FOREIGN KEY(CompanyId) REFERENCES Company(CompanyId)
ALTER TABLE Jobpost add FOREIGN KEY(SkillId) REFERENCES Skills(SkillId)

ALTER TABLE Application add FOREIGN KEY(StudentId) REFERENCES Student(StudentId)
ALTER TABLE Application add FOREIGN KEY(PlacementOffId) REFERENCES PlacementOfficer(PlacementOffId)
