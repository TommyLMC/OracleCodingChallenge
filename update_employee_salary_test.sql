DECLARE
v_result varchar2(50);
BEGIN
-- decrease salary
v_result := widget_ltd.update_employee_salary(90001,-10);
-- increase salary
v_result := widget_ltd.update_employee_salary(90002,10);
END;