# aws-zero-trust-rds-project 
Mini project on AWS (Zero-Trust Netwok with Private EndPoints)}
1. Overview :-
This project demonstrates a secure cloud database architecture using AWS RDS (MySQL) based on Zero Trust principles.
The database is protected using network-level restrictions and controlled access instead of open public exposure.

2. Objectives :-
- Deploy a MySQL database on AWS RDS
- Configure secure networking using VPC and subnets
- Restrict access using Security Groups
- Connect securely using MySQL client
- Validate Zero Trust behavior through controlled access

3. AWS Services Used :-
- Amazon RDS (MySQL)
- VPC (Virtual Private Cloud)
- Subnets (Multi-AZ)
- Security Groups
- MySQL Client (local machine)

4. Security Implementation (Zero Trust) :-
- Database is not openly accessible
- Access allowed only via specific IP / security group rules
- Port 3306 restricted
- Authentication required (username & password)
- Connection fails when access rule is removed (verified)

5. Architecture :-

User (MySQL Client)
        │
        ▼
Security Group (Port 3306 - Controlled Access)
        │
        ▼
Amazon RDS (MySQL Database)
        │
        ▼
Private Subnets (Multi-AZ)

6. Setup Steps :-

i. Created AWS RDS MySQL database
ii. Configured DB Subnet Group (Multi-AZ)
iii. Fixed VPC and subnet issues
iv. Configured Security Group (allow port 3306 from my IP)
v. Installed MySQL client locally
vi. Connected using RDS endpoint
vii. Created database and tables
viii. Tested access restriction (Zero Trust validation)

7. Testing & Validation :-

Successful Tests -
- Connected to RDS using MySQL CLI
- Executed SQL queries
- Created database and tables

8. Security Validation :-
- Removed IP from security group → connection failed
- Added IP again → connection restored
Confirms Zero Trust access control

9. Database Schema :-

CREATE DATABASE projectdb;

USE projectdb;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(100)
);

INSERT INTO users (name, email)
VALUES ('VaibhavGoswami', 'vaibhavgoswami.101@gmail.com');

10. Key Learnings :-

- AWS networking fundamentals (VPC, subnets)
- RDS deployment and configuration
- Security Groups and access control
- Practical implementation of Zero Trust model
