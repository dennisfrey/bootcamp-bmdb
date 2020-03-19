-- selects for each table
select * from actor;
select * from movie;
select * from credit;

-- 3 Table Join to Select Actors and associated Movies (all columns)
select * 
 from actor a
 join credit c
   on c.actorID = a.id
 join movie m
   on m.id = c.movieID
order by a.lastName;

-- 3 Table Join to Select Actors and associated Movies (subtracting columns)
select a.firstName, a.lastName, m.title, m.year, c.role 
 from actor a
 join credit c
   on c.actorID = a.id
 join movie m
   on m.id = c.movieID
order by a.lastName;

-- 3 Table Join to Select Actresses and associated Movies
select a.firstName, a.lastName, m.title, m.year, c.role 
 from actor a
 join credit c
   on c.actorID = a.id
 join movie m
   on m.id = c.movieID
 where a.gender = 'Female'
order by a.lastName;

-- 3 Table Join filter by R rated movies
select a.firstName, a.lastName, m.title, m.year, c.role 
 from actor a
 join credit c
   on c.actorID = a.id
 join movie m
   on m.id = c.movieID
 where m.rating = 'R'
order by a.lastName;

-- Select only R rated movies 
select * from movie where rating = 'R';

-- Select movies from years 2000-present
select * from movie where year >= 2000;
