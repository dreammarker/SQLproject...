SELECT fname, addr,
REGEXP_SUBSTR ( addr, ' [^ ]+ ') road
FROM t1 
/
