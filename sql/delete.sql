delete from t2
where rowid not in(select max(rowid)
from t2
group by employee_id)
/
