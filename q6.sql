SELECT fname, addr,
REGEXP_INSTR ( addr, '[[:alpha:]]' ) pos ,
phone,
REGEXP_INSTR ( phone, '[[:alpha:]]') pos
FROM t1
/
