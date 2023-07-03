select title, au_fname, au_lname, ytd_sales*price*royalty/100 as lucro
from ((authors join titleauthor ON authors.au_id = titleauthor.au_id)join titles on titles.title_id = titleauthor.title_id)
group by title, price, au_fname, au_lname, ytd_sales, royalty