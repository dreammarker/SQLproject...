INSERT ALL
WHEN SAL > 10000 THEN
INTO sal_history VALUES(EMPID,HIREDATE,SAL)
WHEN MGR > 200   THEN 
INTO mgr_history VALUES(EMPID,MGR,SAL)  
    SELECT employee_id EMPID,hire_date HIREDATE,  
           salary SAL, manager_id MGR 
    FROM   employees
    WHERE  employee_id > 200
/
