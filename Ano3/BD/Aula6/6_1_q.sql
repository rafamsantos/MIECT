select stor_name
from((sales join stores on sales.stor_id = stores.stor_id)join titles on titles.title_id = sales.title_id)
group by stor_name
