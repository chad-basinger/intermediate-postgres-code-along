--1. foreign keys new table
create table movie(
  movie_id serial primary key,
  title varchar(255),
  media_type_id integer references media_type(media_type_id)
  )
  
  insert into movie(title, media_type_id)
  values 
  ('spaceballs', 3)
  
  select * from movie;

-- 2. foreign keys--alter table

 alter table movie 
  add column genre_id integer references genre(genre_id)
  
  select * from movie



--using joins

update movie set genre_id = 22
where movie_id = 1;

select artist.name, album.title from artist
join album on artist.artist_id = album.artist_id



select * from track
where genre_id IN(
  select genre_id from genre where name IN ('Jazz', 'Blues'))

update employee
set phone IS null
where employee_id = 1;

select * from employee;

select * from customer 
where company IS NULL

select artist.artist_id, artist.name, count(*) from 
artist join album on artist.artist_id = album.artist_id
GROUP BY artist.artist_id

select distinct country from customer;

select * from customer
where fax IS NULL;

select * from customer
where fax IS NULL;

delete from customer 
where fax IS null;