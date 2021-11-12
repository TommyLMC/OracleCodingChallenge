SET LINESIZE 40
SET PAGESIZE 10
TTITLE CENTER 'Report of Employee Total Salary' SKIP 1
BTITLE CENTER 'End of Report'
COLUMN DEPARTMENT_ID    HEADING 'DEPARTMENT'
COLUMN SALARY FORMAT $999,990 HEADING 'TOTAL SALARY'
SELECT department_id, SUM(salary) salary 
FROM employees
WHERE department_id = &department_id
GROUP BY department_id
ORDER BY department_id;