-- create tables
create table widget_ltd.departments
(department_id number(5) not null
,department_name varchar2(50) not null
,location varchar2(50) not null
,CONSTRAINT pk_departments PRIMARY KEY (department_id)
);
create table widget_ltd.employees
(employee_id  NUMBER(10) not null
,employee_name varchar2(50) not null
,job_title varchar2(50) not null
,manager_id number(10)
,date_hired date not null
,salary number(10) not null
,department_id number(5) not null
,CONSTRAINT pk_employees PRIMARY KEY (employee_id)
);
