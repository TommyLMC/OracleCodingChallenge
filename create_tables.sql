-- create tables
CREATE TABLE departments
(department_id NUMBER(5) NOT NULL
,department_name VARCHAR2(50) NOT NULL
,location VARCHAR2(50) NOT NULL
,CONSTRAINT pk_departments PRIMARY KEY (department_id)
);
CREATE TABLE employees
(employee_id  NUMBER(10) NOT NULL
,employee_name VARCHAR2(50) NOT NULL
,job_title VARCHAR2(50) NOT NULL
,manager_id NUMBER(10)
,date_hired DATE NOT NULL
,salary NUMBER(10) NOT NULL
,department_id NUMBER(5) NOT NULL
,CONSTRAINT pk_employees PRIMARY KEY (employee_id)
,CONSTRAINT fk_departments FOREIGN KEY (department_id) REFERENCES departments (department_id)
);
