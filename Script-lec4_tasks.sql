
--      Task #1           --
-- Q1. Create a table called EMP_TEST with a column NAME having leading and trailing spaces.
CREATE TABLE EMP_TEST (NAME VARCHAR2(50));


INSERT INTO EMP_TEST (NAME) VALUES ('   mohamed');        
INSERT INTO EMP_TEST (NAME) VALUES ('mahmoud   ');        
INSERT INTO EMP_TEST (NAME) VALUES ('   reem    ');    
INSERT INTO EMP_TEST (NAME) VALUES ('Sara');          
INSERT INTO EMP_TEST (NAME) VALUES ('             zienab     '); 
INSERT INTO EMP_TEST (NAME) VALUES ('             mahmoud**');  
INSERT INTO EMP_TEST (NAME) VALUES ('@@mahmoud   ');  
SELECT * FROM emp_test;

--Display all names using TRIM to remove both leading and trailing spaces.
SELECT TRIM(BOTH' ' FROM name)trm FROM emp_test; 

-- Q3. Use LTRIM to remove only leading spaces.
SELECT LTRIM(name)trm FROM emp_test; 

 
-- Q4. Use RTRIM to remove only trailing spaces.
SELECT RTRIM(name)trm FROM emp_test; 

 
-- Q5. Use TRIM to remove a specific character (e.g., ‘*’ or ‘#’) from both sides of a string.
SELECT TRIM(BOTH'@' FROM name)trm FROM emp_test; 
SELECT TRIM(BOTH'*' FROM name)trm FROM emp_test; 



--------------------------------------------------------------

--      Task #2          --      




--------------------------------------------------------------

--      Task #3         --  

-- Q1. Display current date in the format 'DD-MON-YYYY'.
SELECT to_char(sysdate,'DD-MON-YYYY')FROM dual;


-- Q2. Display current date in the format 'Month YYYY'.
SELECT to_char(sysdate,'Month YYYY')FROM dual;


-- Q3. Convert a number to character using TO_CHAR with formatting (e.g., 12345.67 as '12,345.67').
SELECT to_char(12345.67,'99,999.99')FROM dual;


-- Q4. Show salary formatted with a currency symbol.
SELECT first_name,to_char(salary,'$99,99,000')FROM employees;



--------------------------------------------------------------

--      Task #4          --      
CREATE TABLE Students(name varchar2(20),marks number);

 

INSERT INTO Students VALUES ('Zienab', 90);
INSERT INTO Students VALUES ('Ali',    75);
INSERT INTO Students VALUES ('Mona',   82);
INSERT INTO Students VALUES ('Omar',   60);
INSERT INTO Students VALUES ('Sara',   95);
INSERT INTO Students VALUES ('Hany',   70);
INSERT INTO Students VALUES ('Laila',  88);

SELECT * FROM Students;

SELECT name,marks , CASE 
                              WHEN marks >= 90 then 'A'
                              WHEN marks BETWEEN 80 AND 89  then 'B'
                              WHEN marks BETWEEN 70 AND 79  then 'C'
                              ELSE 'F'
                              END AS Grade

 FROM Students;


--------------------------------------------------------------

--      Task #5          --      
                            -- 90/10 => 9 
 SELECT name,marks ,decode(trunc(marks/10),10,'A', 9,'A',8,'B',7,'C','F') AS GRADE FROM Students;



CREATE TABLE orders (status varchar2(8));


INSERT INTO orders VALUES ('P');
INSERT INTO orders VALUES ('S');
INSERT INTO orders VALUES ('D');

SELECT STATUS , DECODE(STATUS,'P','Pending','S','Shipping','D','Deliverd','not found') AS Service FROM orders;



