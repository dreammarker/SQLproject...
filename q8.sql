SELECT fname, phone,
REPLACE(REGEXP_SUBSTR(phone,'\.(\d{3})\.'),'.') code
FROM t1 
/
