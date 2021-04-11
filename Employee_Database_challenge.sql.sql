
-- create new table
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;

--- create table retirement_titles
--- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
--- These columns will be in the new table that will hold the most recent title of each employee.
--- Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.

SELECT DISTINCT employees.emp_no, first_name, last_name, title, from_date, to_date
INTO retirement_titles
FROM employees 
INNER JOIN titles
ON (employees.emp_no = titles.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
ORDER BY employees.emp_no, from_date desc;


--- Create a Unique Titles table using the INTO clause.
--- Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e. to_date) of the most recent title.
--- Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

SELECT DISTINCT A.emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles A
INNER JOIN 
	(SELECT DISTINCT emp_no, max(from_date) from_date
		FROM retirement_titles
		GROUP BY emp_no) 
	B
ON A.emp_no=B.emp_no and A.from_date=B.from_date
ORDER BY  A.emp_no, A.to_date DESC;


select * from unique_titles


--- Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
--- First, retrieve the number of titles from the Unique Titles table.
--- Then, create a Retiring Titles table to hold the required information.
--- Group the table by title, then sort the count column in descending order.
--- Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder

SELECT title, COUNT(emp_no) number_count
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY number_count DESC;

retiring_titles

----------------------

--- In the Employee_Database_challenge.sql file, write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.

--- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
--- Retrieve the from_date and to_date columns from the Department Employee table.
--- Retrieve the title column from the Titles table.
--- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
--- Create a new table using the INTO clause.
--- Join the Employees and the Department Employee tables on the primary key.
--- Join the Employees and the Titles tables on the primary key.
--- Filter the data on the to_date column to get current employees whose birth dates are between January 1, 1965 and December 31, 1965.
--- Order the table by the employee number.
--- Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

SELECT DISTINCT A.emp_no, first_name, last_name, birth_date, from_date, to_date, title
INTO mentorship_eligibilty
FROM
	( SELECT emp_no, first_name, last_name, birth_date
	  FROM employees ) A
INNER JOIN 
	( SELECT emp_no, from_date, to_date
	  FROM Dept_emp ) B ON A.emp_no=B.emp_no
INNER JOIN
	( SELECT D.emp_no, title
	  FROM titles D
	  INNER JOIN (SELECT emp_no, max(from_date) title_date
	  			  FROM titles
	  			  GROUP BY emp_no) E
	  ON D.emp_no=E.emp_no AND D.from_date=E.title_date) C 
 ON A.emp_no=C.emp_no AND B.emp_no=C.emp_no
 WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
 ORDER BY emp_no;

SELECT * FROM mentorship_eligibilty





----------------------


--- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
--- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees
1940
--- number of retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees
SELECT COUNT(emp_no) number_count
 FROM employees 
 WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31');
ANSWER: 1940
