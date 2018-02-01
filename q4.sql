SELECT fname, phone, REGEXP_REPLACE ( phone , '\.' , '-' ) new_format
FROM t1 
/
