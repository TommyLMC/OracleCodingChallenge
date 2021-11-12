PROMPT CREATE OR REPLACE FUNCTION insert_department
CREATE OR REPLACE Function insert_department(i_department_id number,
                                            i_department_name varchar2,
                                            i_location varchar2) return varchar2 IS
                                            
begin
    insert into widget_ltd.departments
    (DEPARTMENT_ID,DEPARTMENT_NAME,LOCATION)
    values
    (i_department_id,i_department_name,i_location);
    commit;
    return null;
exception
  when others then
    return 'Error on create department record.';
end;