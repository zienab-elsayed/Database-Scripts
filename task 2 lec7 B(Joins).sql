--task 2_1


--Write an Oracle SQL query using LEFT OUTER JOIN to show all employees, including those who are not assigned to any department.

SELECT CONCAT(e.first_name ,concat(' ',e.last_name )) full_name, d.department_name
FROM employees e LEFT JOIN DEPARTMENTS d on(e.department_id=d.department_id);
 
 --List all products and their associated categories.
--Some products may not belong to any category. Write a query using LEFT JOIN to include all products regardless of category association.

SELECT  p.product_name,c.category  
FROM  products p LEFT JOIN categories c  on(p.category_id=c.category_id);
 
 


--Find all students and the courses they are enrolled in.
--Use a LEFT OUTER JOIN to include students who are not enrolled in any course.

SELECT s.student_name,c.course_name
FROM students s LEFT  JOIN   courses c
ON ( e.course_id = c.course_id);

--Display all orders with customer names, including orders without a matched customer.
--Assume the orders table has a foreign key customer_id. Use LEFT JOIN to include all orders.

SELECT o.order_name,c.customer_name FROM orders o LEFT JOIN customers c on(o.ORDER_id=c.order_id);



--Show all departments and their managers.
--Write a query to return all departments using a LEFT OUTER JOIN to show their assigned managers, including departments with no manager.

SELECT d.department_name,e.first_name,e.last_name FROM departments d LEFT JOIN EMPLOYEES e on(d.MANAGER_ID =e.employee_id);


--List all books and their authors from the books and authors tables.
--Include books that don’t have an assigned author using a LEFT JOIN.

SELECT b.book_name ,a.auther_name FROM books b LEFT JOIN authers a (b.author_id=a.aothor_id)


--Write a query that retrieves all invoices along with their corresponding payment status.
--Use LEFT JOIN to include invoices with no payment.

SELECT i.invoice_id,i.invoice_date, p.payment_status
FROM invoices i LEFT JOIN payments p ON 
    (i.invoice_id = p.invoice_id);




--Get all employees and their projects from employees and projects_assigned tables.
--Include employees who are not assigned to any project.
SELECT e.employee_name,p.project_name
FROM employees e LEFT JOIN projects_assigned pa ON  e.employee_id = pa.employee_id LEFT JOIN projects p
ON pa.project_id = p.project_id;



-------------------------------------------------------

--task 2_2


--Oracle SQL – RIGHT OUTER JOIN Coding Questions
--List all departments and the employees working in them.
--Use a RIGHT OUTER JOIN to ensure all departments are shown, even if they have no employees.

SELECT CONCAT(e.first_name ,concat(' ',e.last_name )) full_name, d.department_name
FROM employees e RIGHT  JOIN DEPARTMENTS d on(e.department_id=d.department_id);
 




--Retrieve all orders and their corresponding customers.
--Use a RIGHT JOIN to include all customers, even if they haven't placed any orders.


SELECT  p.product_name,c.category  
FROM  products p RIGHT  JOIN categories c  on(p.category_id=c.category_id);
 


--Show all courses and enrolled students.
--Use RIGHT JOIN to return all courses, including those without any enrolled students.

SELECT s.student_name,c.course_name
FROM students s RIGHT   JOIN   courses c
ON ( e.course_id = c.course_id);


--Display all projects and the employees assigned to them.
--Use a RIGHT OUTER JOIN to include all projects even if no employee is assigned.

SELECT e.employee_name,p.project_name
FROM employees e RIGHT  JOIN projects_assigned pa ON  e.employee_id = pa.employee_id LEFT JOIN projects p
ON pa.project_id = p.project_id;



--Write a query to show all payment methods and their related transactions.
--Include payment methods with no transactions using RIGHT JOIN.

SELECT i.invoice_id,i.invoice_date, p.payment_status
FROM invoices i RIGHT  JOIN payments p ON 
    (i.invoice_id = p.invoice_id);


--Find all authors and their books.
--Use a RIGHT OUTER JOIN to list all authors, even those who haven't written any books.

SELECT b.book_name ,a.auther_name FROM books b RIGHT  JOIN authers a (b.author_id=a.aothor_id)


--List all categories and the products under them.
--Use a RIGHT JOIN to ensure all categories are shown, even those with no products.

SELECT  p.product_name,c.category  
FROM  products p RIGHT  JOIN categories c  on(p.category_id=c.category_id);
 


--Retrieve all students and their assigned dorm rooms.
--Use a RIGHT OUTER JOIN to include dorm rooms even if they are unassigned.

SELECT r.room_NUMBER,s.student_name FROM rooms r RIGHT JOIN students s on(r.room_id=s.room_id);


-----------------------------------------------------------
--task 2_3

--Oracle SQL – FULL OUTER JOIN Coding Questions
--Write a query to list all customers and all orders.
--Use a FULL OUTER JOIN to include customers with no orders and orders with no matching customer.


SELECT 
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_date
FROM 
    customers c
FULL OUTER JOIN 
    orders o
ON 
    c.customer_id = o.customer_id;



--Display all employees and all projects.
--Some employees may not be assigned to any project, and some projects may not have any employee. Use a FULL OUTER JOIN.

SELECT 
    e.employee_id,
    e.employee_name,
    p.project_id,
    p.project_name
FROM 
    employees e
FULL OUTER JOIN 
    projects p
ON 
    e.project_id = p.project_id;






--Show all products and all suppliers.
--Include products without suppliers and suppliers without products using FULL OUTER JOIN.
SELECT 
    p.product_id,
    p.product_name,
    s.supplier_id,
    s.supplier_name
FROM 
    products p
FULL OUTER JOIN 
    suppliers s
ON 
    p.supplier_id = s.supplier_id;





--List all students and all courses.
--Write a FULL OUTER JOIN query to include students not enrolled in any course and courses with no students.
SELECT 
    s.student_id,
    s.student_name,
    c.course_id,
    c.course_name
FROM 
    students s
FULL OUTER JOIN 
    courses c
ON 
    s.course_id = c.course_id;







--Retrieve all authors and all books.
--Include authors with no books and books without an assigned author using FULL OUTER JOIN.
SELECT 
    a.author_id,
    a.author_name,
    b.book_id,
    b.book_title
FROM 
    authors a
FULL OUTER JOIN 
    books b
ON 
    a.author_id = b.author_id;




--Write a query to find all employees and all departments.
--Include employees not assigned to any department and departments with no employees.

SELECT 
    e.employee_id,
    e.first_name,
    d.department_id,
    d.department_name
FROM 
    employees e
FULL OUTER JOIN 
    departments d
ON 
    e.department_id = d.department_id;





--Show all transactions and all payment methods.
--Include unmatched records from both sides using a FULL OUTER JOIN.

SELECT 
    t.transaction_id,
    t.amount,
    p.payment_method_id,
    p.method_name
FROM 
    transactions t
FULL OUTER JOIN 
    payment_methods p
ON 
    t.payment_method_id = p.payment_method_id;


--Combine two customer lists from two different regions.
--Use FULL OUTER JOIN to include all customers from both regions, even if they don’t exist in both lists.


SELECT 
    r1.customer_id AS region1_customer_id,
    r1.customer_name AS region1_customer,
    r2.customer_id AS region2_customer_id,
    r2.customer_name AS region2_customer
FROM 
    region1_customers r1
FULL OUTER JOIN 
    region2_customers r2
ON 
    r1.customer_id = r2.customer_id;







