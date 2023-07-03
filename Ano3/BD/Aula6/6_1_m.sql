select type FROM titles
group by type
having MAX(advance) > 1.5*AVG(advance);
