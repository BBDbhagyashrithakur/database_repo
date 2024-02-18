CREATE TABLE tpo
(
tpo_id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
contact INT NOT NULL,
email VARCHAR(255) NOT NULL,
depeartment VARCHAR(255) NOT NULL,
city_name VARCHAR(255) not null,
zip_code int not null,
college_id INT FOREIGN KEY REFERENCES college(college_id) NOT NULL
);