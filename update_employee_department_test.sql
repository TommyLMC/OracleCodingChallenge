DECLARE
    v_result VARCHAR2(50);
BEGIN
    v_result := update_employee_department(90003,3);
    dbms_output.put_line('result='||v_result);
END;