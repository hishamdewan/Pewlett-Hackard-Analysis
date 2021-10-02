# Pewlett Hackard Analysis

## Overview of the analysis 
Purpose of the analysis helps prepare Pewlett Hackard (PH) for the “silver tsunami” of current employees reaching retirement age. I created a PostgreSQL database using CSV files with employee information. The analysis determined the number of retiring employees per title and identifies employees who are eligible to participate in a mentorship program. 

The following entity relationship diagram (ERD) shows the relationship between tables in the database. 

![EmployeeDB](/Data/EmployeeDB.png)

## Results 
The key takeaways from the deliverables are: 

- Over the coming years 90,398 employees in various job titles will be retiring from PH. 
- The different roles that needs to be filled are: Senior Engineer, Senior Staff, Engineer, Staff, Technique Leader, Assistant Engineer, and Manager.

![retiring_titles](/Data/retiring_titles.png)

- In order train new employee, 1,549 employees are eligible for mentoring. 
- Most employees eligible for mentoring senior employees in positions such as Senior Staff, Technique Leader, Senior Engineer, etc. 


## Summary 
- How many roles will need to be filled as the silver tsunami begins to make an impact?

The table for the number of retiring employees by title shows 90,398 employees will be eligible. Majority of retiring employees senior employees. Once these senior employees retire, PH will need to find large number of new employees. Large number of retirements is likely to create a vacuum of talent needed to operate the company. 

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

PH appears to be understaffed with qualified mentors that can train the next generation of employees. There are 1,549 employees who are eligible for mentorship program compared to over 90,000 upcoming retirees. 

The table below shows employees that are eligible for the mentorship program. 

![mentorship_eligibility](/Data/mentorship_eligibility.png)

