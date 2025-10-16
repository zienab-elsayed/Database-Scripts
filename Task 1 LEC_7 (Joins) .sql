--task 1

--Write a query to display the names of employees and their department names using a natural join.

SELECT FIRST_NAME ,DEPARTMENT_NAME  FROM employees NATURAL JOIN DEPARTMENTS ;


--Write a query to list all orders with their corresponding customer names using a natural join.

SELECT * FROM ORDERS NATURAL JOIN CUSTOMERS_12 ;

--Write a query to show student names and the courses they are enrolled in using a natural join.
SELECT name,course FROM STUDENTS NATURAL JOIN CUSTOMERS_12 ; 


--Write a query to display project names and the employees working on them using a natural join.

SELECT employee_name,projecr_name FROM EMPLOYEESS NATURAL JOIN projects;


--Write a query to retrieve invoice details along with product names using a natural join.

SELECT *FROM invoice_details NATURAL JOIN products;


--Write a query to find all books with their respective author names using a natural join.

SELECT book_title FROM books NATURAL JOIN authors;


--Write a query to show supplier names and the products they supply using a natural join.

SELECT supplier_name ,product_name FROM suppliers NATURAL JOIN products;


--Write a query to list employees along with their job titles using a natural join.

SELECT CONCAT(first_name ,concat(' ',last_name )) name ,job_title  FROM employees NATURAL JOIN jobs  ;

--------------------------------------------

--task 2

--Write a query to display employee names and department names by joining the employees and departments tables using the USING clause on department_id.
--we using (using) to select the colomns that we want to make match by it 
SELECT CONCAT(first_name ,concat(' ',last_name )) full_name,department_name FROM employees JOIN departments using(department_id); 


SELECT CONCAT(e.first_name ,concat(' ',e.last_name )) name,d.department_name FROM employees e JOIN DEPARTMENTS d 
on(e.department_id= d.department_id); --we USING on when the name of colomns of tables is differant


--Write a query to list all orders and their corresponding customer names using the USING clause on customer_id.
SELECT * FROM ORDERS_12 JOIN CUSTOMERS_12 using(customer_id);


--Write a query to retrieve product names and supplier names from the products and suppliers tables using the USING clause on supplier_id.

SELECT prouduct_name,supplier_name FROM suppliers JOIN PRODUCTS USING (supplier_id);


--Write a query to show student names and course titles by joining students and enrollments using the USING clause on student_id.

SELECT student_name,course_title,fron students JOIN courses USING (student_id);

--Write a query to display invoice numbers and product names by joining invoices and products using the USING clause on product_id.

SELECT invoice_number, product_name FROM invoices JOIN products USING (product_id);


--Write a query to list project names and employee names using the USING clause on project_id.

SELECT project_name, employee_name FROM projects JOIN employees USING (project_id);

--Write a query to retrieve author names and book titles using the USING clause on author_id.

SELECT author_name, book_title FROM authors JOIN books USING (author_id);


--Write a query to show sales order details with employee names using the USING clause on employee_id.

SELECT order_id, employee_name, order_date, total_amount FROM sales_orders JOIN employees USING (employee_id);


--Write a query to display course schedules and instructor names using the USING clause on instructor_id.

SELECT course_name, schedule_time, instructor_name FROM course_schedules JOIN instructors USING (instructor_id);


--Write a query to list transactions along with account holder names using the USING clause on account_id.
SELECT transaction_id, transaction_date, amount, account_holder_name FROM transactions JOIN accounts USING (account_id);




-----------------------------------------------------------
--task 3

--Write a query to retrieve employee names and their manager names from the employees table, handling ambiguous column names for employee_id and manager_id.
SELECT CONCAT(e.first_name ,concat(' ',e.last_name )) full_name, d.DEPARTMENT_NAME  FROM employees e JOIN DEPARTMENTS d on(e.employee_id = d.manager_id);

SELECT * FROM DEPARTMENTS ;

--Write a query to list customer names and salesperson names from the customers and employees tables, where both tables have a column named name.

SELECT c.name,s.name FROM CUSTOMERS_12 customers c JOIN salesperson s on(c.name=s.name);



--Write a query to display order IDs and product IDs from orders and order_details, both of which have an order_id column.

SELECT o.order_id,od.order_id FROM orders JOIN order_details on(o.order_id = od.order_id);

--Write a query to retrieve student names and instructor names from students and instructors tables using an alias to handle the name column.
SELECT s.student_name,i.instractor_name FROM students s JOIN instractors i on(s.instractor_id =i.instractor_id);


--Write a query to show employee salaries and department budgets, both of which have a budget or salary column that could conflict.
SELECT  e.salary  , d.budget  FROM  employees e JOIN  departments d ON e.department_id = d.department_id;

--Write a query to display project names and task names where both projects and tasks tables contain a name column.
SELECT p.name ,t.name  FROM projects p JOIN tasks t ON  projects.project_id = tasks.project_id;


--Write a query to join courses and exams tables and retrieve their date fields, resolving ambiguity between the columns.

SELECT c.course_date ,e.exam_date FROM courses JOIN  exams ON (courses.course_id = exams.course_id);


--Write a query to show the product name and category name from the products and categories tables, where both have a name column.

SELECT p.name c.name FROM PRODUCTS p JOIN categories c on(p.category_id = c.category_id);

--Write a query to display the book title and publisher name from books and publishers, avoiding column name conflicts.
SELECT b.title ,p.name  FROM books JOIN publishers ON 
   ( b.publisher_id = p.publisher_id);




--Write a query to list employee names and their department's location, resolving ambiguity in the location column from both tables.

SELECT CONCAT(e.first_name ,concat(' ',e.last_name )) full_name, l.street_address 
from employees e 
JOIN  DEPARTMENTS d
on(e.DEPARTMENT_ID =d.department_id)
JOIN LOCATIONS l
on(d.location_id=l.location_id) ;

















