# SQL Problem Solutions - LeetCode Challenges

Welcome to the SQL Problem Solutions repository! This collection contains optimized SQL solutions for various LeetCode challenges, focusing on real-world scenarios such as user trips, employee salaries, and stadium attendance.

## Problems Overview

This repository features solutions to the following SQL problems:

1. **185. Department Top Three Salaries**
   - **Description:** Find the top three unique salaries for each department.
   - **Schema:** 
     ```sql
     -- Employee Table
     CREATE TABLE Employee (
         id INT PRIMARY KEY,
         name VARCHAR(255),
         salary INT,
         departmentId INT
     );

     -- Department Table
     CREATE TABLE Department (
         id INT PRIMARY KEY,
         name VARCHAR(255)
     );
     ```

2. **601. Human Traffic of Stadium**
   - **Description:** Display records with three or more rows of consecutive IDs, where the number of people is greater than or equal to 100.
   - **Schema:** 
     ```sql
     -- Stadium Table
     CREATE TABLE Stadium (
         id INT PRIMARY KEY,
         visit_date DATE,
         people INT
     );
     ```

## Solutions

Each solution is contained in a separate SQL file with the corresponding problem name. The files are structured as follows:

- **185_Department_Top_Three_Salaries.sql**
- **601_Human_Traffic_of_Stadium.sql**

Each SQL file includes:
- The SQL query to solve the problem
- Comments explaining the logic and approach used in the solution

## How to Use

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/MustcodeQ/SQL-Problem-Solutions---LeetCode-Challenges.git
