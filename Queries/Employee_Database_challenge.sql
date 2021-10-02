-- Deliverable 1: The Number of Retiring Employees by Title

-- 1. Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp_no, first_name, last_name, birth_date 
FROM employees;

-- 2. Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT emp_no, title, from_date, to_date 
FROM titles;

-- 3. Create a new table using the INTO clause.
-- 4. Join both tables on the primary key.
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.birth_date, titles.title, titles.from_date,titles.to_date
INTO retirement_titles
FROM employees
LEFT JOIN titles
ON employees.emp_no = titles.emp_no
ORDER BY emp_no ASC;

--5. Filter the data on the birth_date column to retrieve the employees 
-- who were born between 1952 and 1955. Then, order by the employee number. 
SELECT emp_no, first_name, last_name, title, from_date, to_date 
INTO retirement_titles_2
FROM retirement_titles
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles_2
ORDER BY emp_no ASC, to_date DESC;


--Write another query in the Employee_Database_challenge.sql file to retrieve the number
--of employees by their most recent job title who are about to retire.

SELECT COUNT(unique_titles.emp_no), unique_titles.title  
INTO retiring_titles 
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY count DESC;

-- Deliverable 2: The Employees Eligible for the Mentorship Program

-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON (employees.emp_no)
--Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table. 
employees.emp_no, 
employees.first_name, 
employees.last_name, 
employees.birth_date, 
-- Retrieve the from_date and to_date columns from the Department Employee table.
dept_employee.from_date, 
dept_employee.to_date,
-- Retrieve the title column from the Titles table. 
titles.title 
INTO mentorship_eligibilty
FROM employees
--Join the Employees and the Department Employee tables on the primary key.
INNER JOIN dept_employee ON employees.emp_no = dept_employee.emp_no
--Join the Employees and the Titles tables on the primary key.
INNER JOIN titles ON employees.emp_no = titles.emp_no
    WHERE (dept_employee.to_date = '9999-01-01')  
	    AND (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
--Order the table by the employee number.
ORDER BY employees.emp_no ASC;
