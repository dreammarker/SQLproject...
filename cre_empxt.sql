CREATE TABLE empxt (empno       NUMBER(4),
                        ename       VARCHAR2(10),
                         job         VARCHAR2(9),
                         mgr         NUMBER(4),
                         hiredate    DATE,
                         sal         NUMBER(7,2),
                         comm        NUMBER(7,2),
                         deptno      NUMBER(2)
                        )
          ORGANIZATION EXTERNAL
           (
            TYPE ORACLE_LOADER
            DEFAULT DIRECTORY dir_1
            ACCESS PARAMETERS
            (
              records delimited by newline
              badfile dir_1:'empxt.bad'
              logfile dir_1:'empxt.log'
              fields terminated by ','
              missing field values are null
              ( empno, ename, job, mgr,
               hiredate char date_format date mask "dd-mon-yy",
                sal, comm, deptno
              )
            )
            LOCATION ('emp.dat')
          )
     
/
