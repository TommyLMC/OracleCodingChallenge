PROMPT CREATE OR REPLACE FUNCTION get_employee_salary
CREATE OR REPLACE Function get_employee_salary(i_employee_id number) return number IS

t_salary widget_ltd.employees.salary%type:=0;

begin
    select salary into t_salary from widget_ltd.employees where employee_id = i_employee_id;
    return t_salary;
exception
  when others then
    return 0;
end;