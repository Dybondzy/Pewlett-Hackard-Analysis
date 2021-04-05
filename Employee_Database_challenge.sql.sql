
-- create new table
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;


Select * from employees
Select * from titles


Select distinct emp_no, first_name, last_name, birth_date, hire_date
from employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

Select emp_no, title
from titles


Select distinct employees.emp_no, title, first_name, last_name, birth_date, hire_date
INTO retirement_titles
from employees 
INNER JOIN titles
ON (employees.emp_no = titles.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


select * 
from retirement_titles

select count(emp_no) 
from retirement_titles

select * 
from titles

select * 
from employees


Select distinct employees.emp_no, first_name, last_name, title, from_date, to_date
from employees 
INNER JOIN titles
ON (employees.emp_no = titles.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
order by employees.emp_no, title desc;


Select distinct employees.emp_no, first_name, last_name, title, from_date, to_date
INTO retirement_titles
from employees 
INNER JOIN titles
ON (employees.emp_no = titles.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
order by employees.emp_no, title desc;

select * 
from retirement_titles

select count(emp_no) 
from retirement_titles

select * 
from titles

select * 
from retirement_titles

select count(emp_no)
from retirement_titles

select emp_no, max(from_date)
from retirement_titles
group by emp_no


select emp_no, first_name, last_name, title, from_date, to_date
from retirement_titles
where emp_no in (10004,10009,10018,10035)

select emp_no, max(from_date)
from retirement_titles
where emp_no in (10004,10009,10018,10035)
group by emp_no


SELECT a.emp_no, a.first_name, a.last_name, a.title, a.from_date, a.to_date
FROM
( select emp_no, first_name, last_name, title, from_date, to_date
from retirement_titles
where emp_no in (10004,10009,10018,10035)) as a,
( select emp_no, max(from_date) as the_date
from retirement_titles
where emp_no in (10004,10009,10018,10035)
group by emp_no ) as b
WHERE a.emp_no=b.emp_no and a.from_date=b.the_date

SELECT a.emp_no, a.first_name, a.last_name, a.title, a.from_date, a.to_date
FROM
( select emp_no, first_name, last_name, title, from_date, to_date
from retirement_titles) as a,
( select emp_no, max(from_date) as the_date
from retirement_titles
group by emp_no ) as b
WHERE a.emp_no=b.emp_no and a.from_date=b.the_date

SELECT a.emp_no, a.first_name, a.last_name, a.title, a.from_date, a.to_date
INTO unique_titles
FROM
( SELECT emp_no, first_name, last_name, title, from_date, to_date
  FROM retirement_titles) as a,
( SELECT emp_no, max(from_date) as the_date
  FROM retirement_titles
  GROUP BY emp_no ) as b
WHERE a.emp_no=b.emp_no and a.from_date=b.the_date

SELECT *
FROM unique_titles;


SELECT COUNT(emp_no)
FROM unique_titles;

SELECT distinct title
FROM unique_titles
ORDER BY title;

SELECT DISTINCT title, count(emp_no)
FROM unique_titles
GROUP BY title
ORDER BY title;

SELECT DISTINCT title, count(emp_no) theCount
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY theCount desc;

SELECT *
FROM employees
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


SELECT *
FROM employees


SELECT * 
FROM titles


SELECT * 
FROM dept_emp


SELECT DISTINCT emp_no, first_name, last_name, birth_date
FROM employees


SELECT emp_no,from_date, to_date
FROM dept_emp


SELECT DISTINCT title
FROM titles


SELECT DISTINCT a.emp_no, first_name, last_name, birth_date, from_date, to_date
FROM
	( SELECT emp_no, first_name, last_name, birth_date
		FROM employees ) AS a
INNER JOIN
	( SELECT emp_no, from_date, to_date
		FROM dept_emp ) AS b
ON a.emp_no=b.emp_no


SELECT DISTINCT a.emp_no, first_name, last_name, birth_date, from_date, to_date
INTO mentor_eligibility
FROM
	( SELECT emp_no, first_name, last_name, birth_date
		FROM employees ) AS a
INNER JOIN
	( SELECT emp_no, from_date, to_date
		FROM dept_emp ) AS b
ON a.emp_no=b.emp_no



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

-- In the Employee_Database_challenge.sql file, write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.
SELECT *
FROM employees
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


SELECT *
FROM employees


SELECT * 
FROM titles


SELECT * 
FROM dept_emp

SELECT DISTINCT emp_no, first_name, last_name, birth_date
FROM employees


SELECT emp_no,from_date, to_date
FROM dept_emp

SELECT DISTINCT E.emp_no, title, curr_date
FROM
( SELECT DISTINCT emp_no, max(to_date) curr_date
FROM titles
WHERE emp_no in (12155,10095,10122,14104,14127)
GROUP BY emp_no ) D
INNER JOIN titles E
ON d.emp_no=e.emp_no AND to_date=curr_date


SELECT DISTINCT E.emp_no, title, curr_date
FROM
( SELECT DISTINCT emp_no, max(to_date) curr_date
FROM titles
GROUP BY emp_no ) D
INNER JOIN titles E
ON d.emp_no=e.emp_no AND to_date=curr_date

SELECT DISTINCT a.emp_no, first_name, last_name, birth_date, from_date, to_date, title
FROM
	( SELECT emp_no, first_name, last_name, birth_date
		FROM employees ) AS a
INNER JOIN
	( SELECT emp_no, from_date, to_date
		FROM dept_emp ) AS b
ON a.emp_no=b.emp_no 
AND (a.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
INNER JOIN
	( SELECT DISTINCT E.emp_no, title, curr_date
FROM
	( SELECT DISTINCT emp_no, max(to_date) curr_date
		FROM titles
		GROUP BY emp_no ) D
		INNER JOIN titles E
		ON d.emp_no=e.emp_no 
	 	AND to_date=curr_date ) AS c
ON a.emp_no=c.emp_no;


-- the merge data into mentor_eligibility
SELECT DISTINCT a.emp_no, first_name, last_name, birth_date, from_date, to_date, title
INTO mentor_eligibility
FROM
	( SELECT emp_no, first_name, last_name, birth_date
		FROM employees ) AS a
INNER JOIN
	( SELECT emp_no, from_date, to_date
		FROM dept_emp ) AS b
ON a.emp_no=b.emp_no 
AND (a.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
INNER JOIN
	( SELECT DISTINCT E.emp_no, title, curr_date
FROM
	( SELECT DISTINCT emp_no, max(to_date) curr_date
		FROM titles
		GROUP BY emp_no ) D
		INNER JOIN titles E
		ON d.emp_no=e.emp_no 
	 	AND to_date=curr_date ) AS c
ON a.emp_no=c.emp_no;


-- list mentor_eligibility
SELECT * 
FROM mentor_eligibility

