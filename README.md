# database_repo

![ERDdatabase1](https://github.com/BBDbhagyashrithakur/database_repo/assets/159768617/ace6a400-9248-4174-87d3-04c56f9864d9)


## Technology Used :
1. Terraform:
Used for RDS instance creation from Infrastructure as a Code.
2. FlyWay:
Used For The Migration of The Database
3. GitHub Actions:
Used For The CICD Pipeline. 

## Terraform

## Terraform Git Repository
This repository contains Terraform code to provision and manage infrastructure on [your cloud provider]. It simplifies the deployment process and ensures infrastructure as code principles are followed.

## Flyway Installation
Flyway is an open-source database-independent library for tracking, managing, and applying database changes. Flyway is an open-source database migration tool that helps you version control your database schema and apply changes to it over time. Here are the general steps to install Flyway:

1.Visit the official Flyway website at https://flywaydb.org/.

2.Navigate to the "Downloads" section.

3.Download the version of Flyway that corresponds to your operating system (Windows, macOS, or Linux).

4.Flyway can be run from any directory, but you may want to add its location to your system's PATH environment variable for convenience.

5.Verify Installation: flyway -v.

6.Database Configuration: Before using Flyway, you need to configure it for your specific database. Create a configuration file named flyway.conf or use command-line options.

For reference visit https://flywaydb.org/documentation.

## Workflow Steps 

1.Checkout code: This step checks out the repository code.

2.Setup Flyway CLI: Installs the required dependencies and sets up Flyway CLI.

3.Create Secrets in GitHub:

  Navigate to your GitHub repository.
  
  Go to the "Settings" tab.
  
  In the left sidebar, click on "Secrets."
  
  Click on "New repository secret" and add the following secrets:
  
  DB_BUILD_USERNAME: Your database username.
  
  DB_BUILD_PASSWORD: Your database password.
  
  DB_BUILD_URL: Your database URL.
  
4.Flyway Repair: Repairs the metadata table if necessary.

5.Flyway Migrate: Executes database migrations using Flyway.
