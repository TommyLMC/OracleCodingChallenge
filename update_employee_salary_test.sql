DECLARE
    v_result VARCHAR2(50);
BEGIN
-- decrease salary
    v_result := update_employee_salary(90001,-10);
    dbms_output.put_line('result='||v_result);
-- increase salary
    v_result := update_employee_salary(90002,10);
    dbms_output.put_line('result='||v_result);
END;