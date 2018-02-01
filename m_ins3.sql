INSERT FIRST   
WHEN SAL  > 25000  THEN    
INTO special_sal VALUES(DEPTID, SAL) 
WHEN HIREDATE like ('%00%') THEN    
INTO hiredate_history_00 VALUES(DEPTID,HIREDATE)  
WHEN HIREDATE like ('%99%') THEN
INTO hiredate_history_99 VALUES(DEPTID, HIREDATE)
  ELSE  INTO hiredate_history VALUES(DEPTID, HIREDATE)
  SELECT department_id DEPTID, SUM(salary) SAL, MAX(hire_date) HIREDATE  
  FROM   employees
  GROUP BY department_id
/
