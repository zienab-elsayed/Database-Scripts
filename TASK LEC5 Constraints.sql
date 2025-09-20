--    Tasks of lec 5 ---

-- task 1

CREATE TABLE Player (id NUMBER(5) NOT NULL UNIQUE 
                    ,Name Varchar2(20) UNIQUE 
                     ,age NUMBER (3));  


CREATE TABLE Manger (id NUMBER(5) NOT NULL 
                    ,salary NUMBER(10)
                    , Name varchar2(20),
                    UNIQUE (Name,id));

 CREATE TABLE Manger_2 (id NUMBER(5) PRIMARY KEY 
                     ,age NUMBER (3)
                    ,Name varchar2(20));

---------------------------------------------------------
 -- task 2
 -- doctor has many patient ----> one -> many 
 
 
 
 CREATE TABLE Doctor (id NUMBER (5) PRIMARY KEY , 
 					  DR_name varchar2(10) NOT NULL , salary NUMBER(8,2)) 
 
 
 
 CREATE TABLE Patient (id NUMBER (5) PRIMARY KEY , 
 					  P_name varchar2(10) NOT NULL , age NUMBER(4)
 					 , DR_id NUMBER (6),
 					  FOREIGN KEY (DR_id) REFERENCES Doctor (id) ); 
 
 
 


----------------------------------------------------------
--  Task 3

-- relation between teatcher and lang >> one teacher learn --> one language 
-- one lang has learned by many teacher

CREATE TABLE Teacher (id NUMBER(3) PRIMARY KEY
                      ,Name varchar2(20) NOT NULL 
                      ,salary NUMBER (10,3)NOT NULL, lang_id NUMBER (5),
                       FOREIGN KEY (lang_id) REFERENCES LANGUAGE (id) );


 
CREATE TABLE LANGUAGE (id NUMBER(5) PRIMARY KEY 
                      , Language_name varchar2(20) NOT NULL );

SELECT * FROM teacher;
-----------------------------------------------------------

-- Task 4 
-- one --> one  relation 

CREATE TABLE Employeee (id NUMBER (5) PRIMARY KEY , 
 					  E_name varchar2(10) NOT NULL , age NUMBER(4)); 
 

CREATE TABLE EMPLOYEE_Phone (id NUMBER (5) PRIMARY KEY , 
 					   PhoneNumber varchar2(10) NOT NULL  
 					 ,Emp_id NUMBER (6),
 					  FOREIGN KEY (Emp_id) REFERENCES Employeee (id) ); 
 

























