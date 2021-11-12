PROMPT CREATE OR REPLACE FUNCTION insert_employee
CREATE OR REPLACE FUNCTION insert_employee(i_employee_id NUMBER,
                                            i_employee_name VARCHAR2,
                                            i_job_title VARCHAR2,
                                            i_manager_id NUMBER,
                                            i_date_hired DATE,
                                            i_salary NUMBER,
                                            i_department_id NUMBER) RETURN VARCHAR2 IS
                                            
BEGIN
    INSERT INTO employees
    (employee_id,employee_name,job_title,manager_id,date_hired,salary,department_id)
    VALUES
    (i_employee_id,i_employee_name,i_job_title,i_manager_id,i_date_hired,i_salary,i_department_id);
    COMMIT;
    RETURN null;
EXCEPTION
  WHEN OTHERS THEN
    RETURN 'Error on create employee record.';
END;