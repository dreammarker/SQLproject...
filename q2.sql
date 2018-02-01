SELECT fname, phone
FROM t1
WHERE REGEXP_LIKE (phone, '...\...\.....\.......') 
/
