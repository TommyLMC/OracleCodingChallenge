DECLARE
v_result varchar2(50);
BEGIN
v_result := widget_ltd.insert_department(1, 'Management', 'London');
v_result := widget_ltd.insert_department(2, 'Engineering', 'Cardiff');
v_result := widget_ltd.insert_department(3, 'Research '||'&'||' Development', 'Edinburgh');
v_result := widget_ltd.insert_department(4, 'Sales', 'Belfast');
END;