SELECT fname, addr,
REGEXP_COUNT(addr,'a') cnt
FROM t1 
/
