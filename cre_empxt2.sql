create table empxt2
      Organization external
     (type oracle_datapump
      Default directory dir_1
      Location('emp2.dat'))
      As
      Select * from employees
/
