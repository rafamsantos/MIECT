select title
from ((titles join sales on titles.title_id = sales.title_id) inner join stores on stores.stor_id = sales.stor_id)
group by title, stor_name
having stor_name != 'BookBeat'