select au_fname, au_lname
from ((authors join titleauthor ON authors.au_id = titleauthor.au_id) join titles ON titles.title_id = titleauthor.title_id)
group by au_fname, au_lname
having count(type)>1