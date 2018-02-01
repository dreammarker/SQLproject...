SELECT fname, lname
FROM t1
WHERE REGEXP_LIKE (fname, '^Ste(v|ph)en$') 
/
