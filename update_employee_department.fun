PROMPT CREATE OR REPLACE FUNCTION update_employee_department
CREATE OR REPLACE Function update_employee_department(i_employee_id NUMBER,
                                                        i_department_id NUMBER) RETURN VARCHAR2 IS

t_department_id departments.department_id%TYPE;

BEGIN
    SELECT department_id INTO t_department_id FROM departments WHERE department_id = i_department_id;

    BEGIN
        UPDATE employees
        SET department_id = t_department_id
        WHERE employee_id = i_employee_id;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 'Error on update employee department.';
    END;        
    RETURN NULL;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 'Department not found.';
END;