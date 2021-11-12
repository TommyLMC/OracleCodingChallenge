PROMPT CREATE OR REPLACE FUNCTION get_employee_salary
CREATE OR REPLACE FUNCTION get_employee_salary(i_employee_id NUMBER) RETURN NUMBER IS

    t_salary widget_ltd.employees.salary%TYPE:=0;

BEGIN
    SELECT salary INTO t_salary FROM employees WHERE employee_id = i_employee_id;
    RETURN t_salary;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 0;
END;