SET DEFINE OFF;
DECLARE
    v_result VARCHAR2(50);
BEGIN
    v_result := insert_department(1, 'Management', 'London');
    dbms_output.put_line('result='||v_result);
    v_result := insert_department(2, 'Engineering', 'Cardiff');
    dbms_output.put_line('result='||v_result);
    v_result := insert_department(3, 'Research & Development', 'Edinburgh');
    dbms_output.put_line('result='||v_result);
    v_result := insert_department(4, 'Sales', 'Belfast');
    dbms_output.put_line('result='||v_result);
END;