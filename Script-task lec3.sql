--Task lec 3

--Find all employee where the emp_id is within a certain range  100  and  105.
SELECT * FROM employees WHERE EMPLOYEE_ID BETWEEN 100 AND 105;

--Find all employee that belong to a specific set of emp_id  151 , 152, 153, 154 , 155.
SELECT * FROM employees WHERE EMPLOYEE_ID in(151,152,153,154,155);


--Retrieve all employee where the employee first_name starts with the letter 'P' OR 'p'
SELECT * FROM employees WHERE first_name LIKE 'p%' OR first_name LIKE 'P%';


-- Retrieve all employee where the employee first_name end with the letter 'A' OR 'a'
SELECT * FROM employees WHERE first_name LIKE '%a' OR first_name LIKE '%A';


--Retrieve all employee where the employee first_name with the letter 'A' OR 'a'
SELECT * FROM employees WHERE first_name LIKE '%a%' OR first_name LIKE '%A%';


--Retrieve all employee where the employee first_name  third char with the letter 'e' OR 'E'
SELECT * FROM employees WHERE first_name LIKE '__e%' OR first_name LIKE '__E%';

--Retrieve all employees who don't have a manager assigned (i.e., manager_id is NULL).
SELECT * FROM employees WHERE MANAGER_ID IS NULL;

--Find all employees who have a manager assigned.
SELECT * FROM employees WHERE MANAGER_ID is NOT NULL;

--Insert a new employee without assigning a manager (NULL value for manager_id).
INSERT INTO EMPLOYEES_1 VALUES (99,'Zienab','Elsayed','ZIENAB', '515.123.2586' ,  TO_DATE('2024-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS') ,'CS',15000,0.5,NULL,60);
SELECT * from employees_1;

--Find all employees who work either in the 'AD_VP' JOB_ID or the 'IT_PROG' JOB_ID
SELECT * FROM employees WHERE JOB_ID = 'AD_VP' OR JOB_ID ='IT_PROG';


--Retrieve all employees sorted by their last_name in ascending order.
SELECT * FROM EMPLOYEES ORDER BY last_name;


-- Retrieve all employees sorted by their hire_date in descending order.
SELECT * FROM EMPLOYEES ORDER BY HIRE_DATE desc;


--Sort employees first by department in ascending order and then by salary in descending order within each department_id.
SELECT * from employees ORDER BY DEPARTMENT_ID,SALARY  desc  


--Retrieve all employees with their last_name in lowercase
SELECT first_name,LOWER(last_name) AS last_name_lower , salary FROM employees;


--Retrieve all employees with their first_name in uppercase.
SELECT  upper(first_name) AS upper_first_name , last_name , salary FROM employees;


--Retrieve all employees with their first_name and last_name in title case (first letter capitalized).
SELECT (CONCAT(first_name,CONCAT('  ', last_name))) AS  first_letter_capitalized FROM employees;


--Find employees whose last_name is 'smith', regardless of the case.
SELECT * FROM employees WHERE lower(LAST_name)='smith';














