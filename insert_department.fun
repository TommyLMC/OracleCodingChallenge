PROMPT CREATE OR REPLACE FUNCTION insert_department
CREATE OR REPLACE FUNCTION insert_department(i_department_id NUMBER,
                                            i_department_name VARCHAR2,
                                            i_location VARCHAR2) RETURN VARCHAR2 IS
                                            
BEGIN
    INSERT INTO departments
    (department_id,department_name,location)
    VALUES
    (i_department_id,i_department_name,i_location);
    COMMIT;
    RETURN NULL;
EXCEPTION
  WHEN OTHERS THEN
    RETURN 'Error on create department record.';
END;