CREATE TABLE company
(
company_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  company_name VARCHAR(255) NOT NULL,
  contact INT NOT NULL,
  email VARCHAR(255) NOT NULL,
  location varchar(255) not null,
  industry_type VARCHAR(255) NOT NULL
);