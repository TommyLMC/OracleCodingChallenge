SET LINESIZE 40
SET PAGESIZE 10
TTITLE CENTER 'Report of Employee Total Salary' SKIP 1
BTITLE CENTER 'End of Report'
COLUMN DEPARTMENT_ID    HEADING 'DEPARTMENT'
COLUMN SALARY FORMAT $999,990 HEADING 'TOTAL SALARY'
select department_id, sum(salary) salary 
from tommy.employees
where department_id = &department_id
group by department_id
order by department_id;