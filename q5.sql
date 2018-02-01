SELECT fname, phone,
REGEXP_REPLACE (phone, '(\d{3})\.(\d{3})\.(\d{4})','(\1)-\2-\3') new_phone
FROM t1 
/
