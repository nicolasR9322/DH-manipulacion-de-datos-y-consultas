-- desafio 1

insert into genres(name,ranking,active)
values ("Investigacion", 13,1);

update genres 
set name = "Investigacion Cientifica"
where name = "Investigacion";

delete from genres 
where id = 18;

select * from movies m ;

select first_name , last_name , rating  from actors a ;

select title as "titulos" from series;

-- desafio 2

select first_name , last_name  from actors a
where rating > 7.5;

select title,rating, awards from movies m 
where rating > 7.5 and awards > 2;

select title, rating from movies m 
order by rating ;

-- desafio 3

select title from  movies
limit 3;

select title  from movies m 
order by rating desc
limit 5;

select title from movies m 
order by rating desc
limit 5 
offset 5;

select concat(first_name, " " ,last_name) as actor  
from actors a 
limit 10;

select concat(first_name, " " ,last_name) as actor  
from actors a 
limit 10
offset 20;

-- desafio 4

select title ,rating  from movies m 
where title  like "%Harry Potter%";

select first_name as nombre from actors a 
where first_name  like "Sam%";

select title from movies m 
where extract(year from release_date) 
between 2004 and 2008;

