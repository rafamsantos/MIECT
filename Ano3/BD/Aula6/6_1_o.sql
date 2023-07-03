select ytd_sales, title, ytd_sales*price as faturação, ytd_sales*price*royalty/100 as lucro,price*ytd_sales-price*ytd_sales*royalty/100 AS publisher_revenue
from titles