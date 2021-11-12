PROMPT CREATE OR REPLACE FUNCTION update_employee_salary
CREATE OR REPLACE FUNCTION update_employee_salary(i_employee_id NUMBER,
                                                i_salary_percentage NUMBER) RETURN VARCHAR2 IS
t_salary employees.salary%TYPE:=0;
v_salary employees.salary%TYPE:=0;
-- salary percentage
-- increase e.g. 10
-- decrease e.g. -10 
BEGIN
    SELECT salary INTO t_salary FROM employees WHERE employee_id = i_employee_id;
    v_salary := t_salary * (1+(i_salary_percentage/100));
    BEGIN
        UPDATE widget_ltd.employees
        SET salary = v_salary
        WHERE employee_id = i_employee_id;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 'Error on update employee salary.';
    END;        
    RETURN NULL;
EXCEPTION
  WHEN OTHERS THEN
    RETURN 'Employee salary not found.';
END;