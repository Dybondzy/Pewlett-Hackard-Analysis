# Pewlett-Hackard-Analysis

Background
Now that Bobby has proven his SQL chops, his manager has given both of you two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, you’ll write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

What You're Creating
This new assignment consists of two technical analysis deliverables and a written report. You will submit the following:

Deliverable 1: The Number of Retiring Employees by Title
Deliverable 2: The Employees Eligible for the Mentorship Program
Deliverable 3: A written report on the employee database analysis (README.md)

Deliverable 1: The Number of Retiring Employees by Title (50 points)
Deliverable 1 Instructions
Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. Because some employees may have multiple titles in the database—for example, due to promotions—you’ll need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. Then, use the COUNT() function to create a final table that has the number of retirement-age employees by most recent job title.

The ERD diagram is at the following location:
https://github.com/Dybondzy/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png


Create a SQL file in the Queries folder of your Pewlett-Hackard-Analysis GitHub folder, and name it Employee_Database_challenge.sql.

Follow the instructions below to complete Deliverable 1.

Retrieve the emp_no, first_name, and last_name columns from the Employees table.
Retrieve the title, from_date, and to_date columns from the Titles table.
Create a new table using the INTO clause.
Join both tables on the primary key.
Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
Before you export your table, confirm that it looks like this image:


PNG 1


Note: There are duplicate entries for some employees because they have switched titles over the years. Use the following instructions to remove these duplicates and keep only the most recent title of each employee.

Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.
Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
These columns will be in the new table that will hold the most recent title of each employee.
Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
If you’d like a hint on using the DISTINCT ON statement, that’s totally okay. If not, that’s great too. You can always revisit this later if you change your mind.


Create a Unique Titles table using the INTO clause.
Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e. to_date) of the most recent title.
Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
Before you export your table, confirm that it looks like this image:


PNG 2


Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
First, retrieve the number of titles from the Unique Titles table.
Then, create a Retiring Titles table to hold the required information.
Group the table by title, then sort the count column in descending order.
Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
Before you export your table, confirm that it looks like this image:


PNG 3


Save your Employee_Database_challenge.sql file in your Queries folder in the Pewlett-Hackard folder.
Deliverable 1 Requirements
You will earn a perfect score for Deliverable 1 by completing all requirements below:

A query is written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955. (10 pt)
The Retirement Titles table is exported as retirement_titles.csv. (5 pt)
​A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title. (15 pt)
​The Unique Titles table is exported as unique_titles.csv. (5 pt)
A query is written and executed to create a Retiring Titles table that contains the number of titles filled by employees who are retiring. (10 pt)
The Retiring Titles table is exported as retiring_titles.csv. (5 pt)
Deliverable 2: The Employees Eligible for the Mentorship Program(30 points)
Deliverable 2 Instructions
Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

In the Employee_Database_challenge.sql file, write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.

Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
Retrieve the from_date and to_date columns from the Department Employee table.
Retrieve the title column from the Titles table.
Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
Create a new table using the INTO clause.
Join the Employees and the Department Employee tables on the primary key.
Join the Employees and the Titles tables on the primary key.
Filter the data on the to_date column to get current employees whose birth dates are between January 1, 1965 and December 31, 1965.
Order the table by the employee number.
Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
Before you export your table, confirm that it looks like this image:

PNG 4


Deliverable 2 Requirements
You will earn a perfect score for Deliverable 2 by completing all requirements below:

A query is written and executed to create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965. (25 pt)
The Mentorship Eligibility table is exported and saved as mentorship_eligibilty.csv. (5 pt)
Deliverable 3: A written report on the employee database analysis (20 points)
Deliverable 3 Instructions
For this part of the Challenge, you’ll write a report to help the manager prepare for the upcoming "silver tsunami."

The analysis should contain the following:

Overview of the analysis: Explain the purpose of this analysis.
Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Deliverable 3 Requirements
Structure, Organization, and Formatting (6 points)
The written analysis has the following structure, organization, and formatting:

There is a title, and there are multiple sections. (2 pt)
Each section has a heading and subheading. (2 pt)
Links to images are working and displayed correctly. (2 pt)
Analysis (14 points)
The written analysis has the following:

Overview of the analysis:

The purpose of the new analysis is well defined. (3 pt)
Results:

There is a bulleted list with four major points from the two analysis deliverables. (6 pt)
Summary:

The summary addresses the two questions and contains two additional queries or tables that may provide more insight. (5 pt)
Submission
Once you’re ready to submit, make sure to check your work against the rubric to ensure you are meeting the requirements for this Challenge one final time. It’s easy to overlook items when you’re in the zone!

As a reminder, the deliverables for this Challenge are as follows:

Deliverable 1: The Number of Retiring Employees by Title
Deliverable 2: The Employees Eligible for the Mentorship Program
Deliverable 3: A written report on the employee database analysis (README.md)
Upload the following to your Pewlett-Hackard-Analysis GitHub repository:

The Queries folder with the Employee_Database_challenge.sql file
The Data folder with the retirement_titles.csv, unique_titles.csv, retiring_titles.csv, and mentorship_eligibilty.csv files
An updated README.md that has your written analysis
To submit your challenge assignment in Canvas, click Submit, then provide the URL of your Pewlett-Hackard-Analysis GitHub repository for grading.

Deliverable 1: The Number of Retiring Employees by Title (50 points)
Deliverable 1 Instructions
Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. Because some employees may have multiple titles in the database—for example, due to promotions—you’ll need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. Then, use the COUNT() function to create a final table that has the number of retirement-age employees by most recent job title.

Create a SQL file in the Queries folder of your Pewlett-Hackard-Analysis GitHub folder, and name it Employee_Database_challenge.sql.

Follow the instructions below to complete Deliverable 1.

Retrieve the emp_no, first_name, and last_name columns from the Employees table.
Retrieve the title, from_date, and to_date columns from the Titles table.
Create a new table using the INTO clause.
Join both tables on the primary key.
Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
Before you export your table, confirm that it looks like this image:

There are duplicate entries for some employees because they have switched titles over the years. Use the following instructions to remove these duplicates and keep only the most recent title of each employee.

Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.
Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
These columns will be in the new table that will hold the most recent title of each employee.
Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
If you’d like a hint on using the DISTINCT ON statement, that’s totally okay. If not, that’s great too. You can always revisit this later if you change your mind.

Create a Unique Titles table using the INTO clause.
Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e. to_date) of the most recent title.
Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
Before you export your table, confirm that it looks like this image:

Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
First, retrieve the number of titles from the Unique Titles table.
Then, create a Retiring Titles table to hold the required information.
Group the table by title, then sort the count column in descending order.
Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
Before you export your table, confirm that it looks like this image:

Save your Employee_Database_challenge.sql file in your Queries folder in the Pewlett-Hackard folder.
Deliverable 1 Requirements
You will earn a perfect score for Deliverable 1 by completing all requirements below:

A query is written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955. (10 pt)
The Retirement Titles table is exported as retirement_titles.csv. (5 pt)
​A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title. (15 pt)
​The Unique Titles table is exported as unique_titles.csv. (5 pt)
A query is written and executed to create a Retiring Titles table that contains the number of titles filled by employees who are retiring. (10 pt)
The Retiring Titles table is exported as retiring_titles.csv. (5 pt)
Deliverable 2: The Employees Eligible for the Mentorship Program(30 points)
Deliverable 2 Instructions
Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

In the Employee_Database_challenge.sql file, write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.

Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
Retrieve the from_date and to_date columns from the Department Employee table.
Retrieve the title column from the Titles table.
Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
Create a new table using the INTO clause.
Join the Employees and the Department Employee tables on the primary key.
Join the Employees and the Titles tables on the primary key.
Filter the data on the to_date column to get current employees whose birth dates are between January 1, 1965 and December 31, 1965.
Order the table by the employee number.
Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
Before you export your table, confirm that it looks like this image:

Deliverable 2 Requirements
You will earn a perfect score for Deliverable 2 by completing all requirements below:

A query is written and executed to create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965. (25 pt)
The Mentorship Eligibility table is exported and saved as mentorship_eligibilty.csv. (5 pt)
Deliverable 3: A written report on the employee database analysis (20 points)
Deliverable 3 Instructions
For this part of the Challenge, you’ll write a report to help the manager prepare for the upcoming "silver tsunami."

The analysis should contain the following:

Overview of the analysis: Explain the purpose of this analysis.
Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Deliverable 3 Requirements
Structure, Organization, and Formatting (6 points)
The written analysis has the following structure, organization, and formatting:

There is a title, and there are multiple sections. (2 pt)
Each section has a heading and subheading. (2 pt)
Links to images are working and displayed correctly. (2 pt)
Analysis (14 points)
The written analysis has the following:

Overview of the analysis:

The purpose of the new analysis is well defined. (3 pt)
Results:

There is a bulleted list with four major points from the two analysis deliverables. (6 pt)
Summary:

The summary addresses the two questions and contains two additional queries or tables that may provide more insight. (5 pt)
Submission
Once you’re ready to submit, make sure to check your work against the rubric to ensure you are meeting the requirements for this Challenge one final time. It’s easy to overlook items when you’re in the zone!

As a reminder, the deliverables for this Challenge are as follows:

Deliverable 1: The Number of Retiring Employees by Title
Deliverable 2: The Employees Eligible for the Mentorship Program
Deliverable 3: A written report on the employee database analysis (README.md)
Upload the following to your Pewlett-Hackard-Analysis GitHub repository:

The Queries folder with the Employee_Database_challenge.sql file
The Data folder with the retirement_titles.csv, unique_titles.csv, retiring_titles.csv, and mentorship_eligibilty.csv files
An updated README.md that has your written analysis
To submit your challenge assignment in Canvas, click Submit, then provide the URL of your Pewlett-Hackard-Analysis GitHub repository for grading.

.
