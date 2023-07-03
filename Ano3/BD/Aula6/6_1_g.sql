select distinct pub_name from titles,publishers
where type = 'Business' and titles.pub_id=publishers.pub_id;