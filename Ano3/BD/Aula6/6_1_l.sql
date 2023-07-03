select type,titles.pub_id, avg(price) as mediaPreço,count(ytd_sales) as vendasTotais
from ((titles join sales ON titles.title_id = sales.title_id) join publishers ON publishers.pub_id = titles.pub_id)
group by titles.pub_id,type