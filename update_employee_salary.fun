PROMPT CREATE OR REPLACE FUNCTION update_employee_salary
CREATE OR REPLACE Function update_employee_salary(i_employee_id number,
                                                i_salary_percentage number) return varchar2 IS

t_salary tommy.employees.salary%type:=0;
v_salary tommy.employees.salary%type:=0;

-- salary percentage
-- increase e.g. 10
-- decrease e.g. -10 

begin
    select salary into t_salary from widget_ltd.employees where employee_id = i_employee_id;
    
    v_salary := t_salary * (1+(i_salary_percentage/100));
    
    begin
        update widget_ltd.employees
        set salary = v_salary
        where employee_id = i_employee_id;
        commit;
    exception
        when others then
            return 'Error on update employee salary.';
    end;        
    return null;
exception
  when others then
    return 'Employee salary not found.';
end;