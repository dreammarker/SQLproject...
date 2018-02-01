SELECT fname, phone
FROM t1
WHERE REGEXP_LIKE (phone, '[0-9]{3}\.[0-9]{2}\.[0-9]{4}\.[0-9]{6}') 
/
