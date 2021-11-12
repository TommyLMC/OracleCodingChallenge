PROMPT CREATE OR REPLACE FUNCTION update_employee_department
CREATE OR REPLACE Function update_employee_department(i_employee_id number,
                                                        i_department_id number) return varchar2 IS

t_department_id widget_ltd.departments.department_id%type;

begin
    select department_id into t_department_id from widget_ltd.departments where department_id = i_department_id;

    begin
        update widget_ltd.employees
        set department_id = t_department_id
        where employee_id = i_employee_id;
        commit;
    exception
        when others then
            return 'Error on update employee department.';
    end;        
    return null;
exception
  when others then
    return 'Department not found.';
end;