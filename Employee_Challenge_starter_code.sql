-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;


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

