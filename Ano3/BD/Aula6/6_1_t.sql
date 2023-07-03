select stor_name
from(((publishers join titles on publishers.pub_id = titles.pub_id)join sales on sales.title_id = titles.title_id)join stores on stores.stor_id = sales.stor_id)
group by stor_name, titles.pub_id, publishers.pub_id
having titles.pub_id!= publishers.pub_id