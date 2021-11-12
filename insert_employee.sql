DECLARE
v_result varchar2(50);
BEGIN
v_result := widget_ltd.insert_employee(90001, 'John Smith', 'CEO', NULL, TO_DATE('01/01/95','dd/mm/yy'), 100000, 1);
v_result := widget_ltd.insert_employee(90002, 'Jimmy Willis', 'Manager', 90001, TO_DATE('23/09/03','dd/mm/yy'), 52500, 4);
v_result := widget_ltd.insert_employee(90003, 'Roxy Jones', 'Salesperson', 90002, TO_DATE('11/02/17','dd/mm/yy'), 35000, 4);
v_result := widget_ltd.insert_employee(90004, 'Selwyn Field', 'Salesperson', 90003, TO_DATE('20/05/15','dd/mm/yy'), 32000, 4);
v_result := widget_ltd.insert_employee(90005, 'David Hallett', 'Engineer', 90006, TO_DATE('17/04/18','dd/mm/yy'), 40000, 2);
v_result := widget_ltd.insert_employee(90006, 'Sarah Phelps', 'Manager', 90001, TO_DATE('21/03/15','dd/mm/yy'), 45000, 2);
v_result := widget_ltd.insert_employee(90007, 'Louise Harper', 'Engineer', 90006, TO_DATE('01/01/13','dd/mm/yy'), 47000, 2);
v_result := widget_ltd.insert_employee(90008, 'Tina Hart', 'Engineer', 90009, TO_DATE('28/07/14','dd/mm/yy'), 45000, 3);
v_result := widget_ltd.insert_employee(90009, 'Gus Jones', 'Manager', 90001, TO_DATE('15/05/18','dd/mm/yy'), 50000, 3);
v_result := widget_ltd.insert_employee(90010, 'Mildred Hall', 'Secretary', 90001, TO_DATE('12/10/96','dd/mm/yy'), 35000, 1);
END;

