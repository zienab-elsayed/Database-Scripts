CREATE TABLE EMployees_12 (NAME VARCHAR2(100),SALARY NUMBER ,AGE NUMBER ,JOB_TITLE VARCHAR2(50),CONSTRAINT CHECK_AGE CHECK (AGE >= 18  ));

INSERT INTO Employees_12 (Name,salary ,Age,JOB_TITLE )
VALUES ( 'John Smith', 5000,25,'Engineer');



INSERT INTO Employees_12 (Name,salary ,Age,JOB_TITLE )
VALUES ( 'John Smith', 5000,15,'Engineer');    --invaild constraint

ALTER TABLE employees_12 ADD CONSTRAINT salary_check  CHECk (salary>=5000 AND salary<10000);





-----------------------------------------------------


CREATE table products(product_name varchar2(100), price NUMBER ,Brand varchar2(50));

ALTER TABLE products ADD CONSTRAINT check_price check(price >0);
 
ALTER TABLE products ADD CONSTRAINT pk_const  UNIQUE (product_name); 


INSERT INTO products VALUES  ('T-shit',200,'zara');

INSERT INTO products VALUES  ('T-shit',0,'zara');  -- invalid constarint 

----------------------------------------------------------------

CREATE TABLE students_12 (name varchar2(100),grade varchar2(5),name_of_corse varchar2(50));

ALTER TABLE students_12 ADD CONSTRAINT check_grade CHECK (grade ='A' OR grade ='B' OR   grade ='C' OR grade ='D' OR grade ='F');

INSERT INTO STUDENTS_12 VALUES ('ZIENAB','A','Engilsh');

INSERT INTO STUDENTS_12 VALUES ('Ahmed','m','Engilsh');  --invaild ocnstraint



----------------------------------------------------------
CREATE TABLE customers_12 (uesrname varchar2(100), email varchar2(50),password varchar2(30));
ALTER TABLE customers_12 ADD customer_id NUMBER PRIMARY  KEY ;
SELECT * FROM customers_12;
 
ALTER TABLE customers_12 MODIFY email NOT NULL;

-----------------------------------------------------------
CREATE TABLE Users_12 (username varchar2(100) PRIMARY KEY , email varchar2(50),password varchar2(30));

ALTER TABLE users_12 ADD CONSTRAINT unique_username UNIQUE (username);
 

 
-------------------------------------------------

CREATE TABLE Orders_12 (order_id  NUMBER PRIMARY KEY,
    customer_id   NUMBER NOT NULL,
    order_date    DATE DEFAULT SYSDATE,
    total_amount  NUMBER(10,2) CHECK (total_amount >= 0));

ALTER TABLE Orders_12 ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id)  REFERENCES customers_12 (customer_id);



--------------------------------------------------
CREATE TABLE Accounts_12 (
    account_id     NUMBER PRIMARY KEY,  
    account_type   VARCHAR2(20) ,
    balance        NUMBER  ,
    opened_date    DATE DEFAULT SYSDATE
);


ALTER TABLE Accounts_12 ADD CONSTRAINT CHECK_balance CHECK (balance >=0);

INSERT INTO Accounts_12 (account_id, account_type, balance) VALUES (102 , 'private',200);


-----------------------------------------------


--Drop a CHECK constraint named chk_salary from the Employees table.

 ALTER TABLE employees_12 DROP CONSTRAINT  salary_check;

 --Remove the UNIQUE constraint on email from the Users table.

 ALTER TABLE Users_12 DROP CONSTRAINT  UNIQUE_USERNAME;


--Drop the PRIMARY KEY from the Products table.
 
 ALTER TABLE products DROP  CONSTRAINT pk_const;
 
--Drop a FOREIGN KEY constraint named fk_order_customer from the Orders table.

 ALTER TABLE ORDERS_12  DROP  CONSTRAINT fk_customer_id;

--------------------------------------------------------
 CREATE TABLE contacts_12 (caller_name varchar2(20), phone_number NUMBER CONSTRAINT not_null_phone NOT NULL  );
 
--Write SQL to remove a NOT NULL constraint from the phone column in the Contacts table.

ALTER TABLE contacts_12 DROP  CONSTRAINT not_null_phone ;
 ---------------------------------------------------------

--Rename a CHECK constraint named chk_age to check_min_age on the Employees table.

ALTER TABLE employees_12 RENAME CONSTRAINT CHECK_AGE TO chech_min_age;


--Rename a FOREIGN KEY constraint fk_emp_dept to fk_employee_department on the Employees table.

ALTER TABLE employees RENAME CONSTRAINT EMP_DEPT_FK TO fk_employee_department;


--Rename the PRIMARY KEY constraint on the Users table to pk_users_id.

ALTER TABLE users_12 RENAME CONSTRAINT   SYS_C007577 TO pk_users_id;


-----------------------------------------------------

--Disable a FOREIGN KEY constraint named fk_customer_order on the Orders table.

ALTER TABLE Orders_12 DISABLE  CONSTRAINT fk_customer_id;


--Write SQL to disable the CHECK constraint on the Accounts.balance column.

ALTER TABLE Accounts_12 DISABLE CONSTRAINT CHECK_balance;


ALTER TABLE DEPARTMENTS DISABLE CONSTRAINT DEPT_ID_PK;

--------------------------------------------------------------


--Enable the FOREIGN KEY constraint fk_customer_order on the Orders table.
ALTER TABLE Orders_12 ENABLE  CONSTRAINT fk_customer_id;





