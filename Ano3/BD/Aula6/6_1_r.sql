select stor_name 
from stores JOIN sales ON stores.stor_id=sales.stor_id JOIN titles ON sales.title_id=titles.title_id
group by stor_name
having sum(sales.qty)>(SUM(sales.qty)/COUNT(sales.stor_id));