select title,stor_name
from ((titles JOIN sales ON titles.title_id=sales.title_id) JOIN stores ON sales.stor_id=stores.stor_id)
where stor_name LIKE 'BookBeat'