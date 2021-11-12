PROMPT CREATE OR REPLACE FUNCTION insert_employee
CREATE OR REPLACE Function insert_employee(i_employee_id number,
                                            i_employee_name varchar2,
                                            i_job_title varchar2,
                                            i_manager_id number,
                                            i_date_hired date,
                                            i_salary number,
                                            i_department_id number) return varchar2 IS
                                            
begin
    insert into widget_ltd.employees
    (employee_id,employee_name,job_title,manager_id,date_hired,salary,department_id)
    values
    (i_employee_id,i_employee_name,i_job_title,i_manager_id,i_date_hired,i_salary,i_department_id);
    commit;
    return null;
exception
  when others then
    return 'Error on create employee record.';
end;