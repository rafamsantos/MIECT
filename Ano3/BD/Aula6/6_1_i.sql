select title, sum(qty)as totalSales_pub
from((sales JOIN titles ON sales.title_id = titles.title_id) JOIN publishers ON publishers.pub_id = titles.pub_id)
group by title
