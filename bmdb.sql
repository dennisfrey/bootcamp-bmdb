-- Drop and Create the Database, DDL

drop database if exists bmdb;
create database bmdb;
use bmdb;

-- DDL - Create Tables
create table movie (
	id 				int 			primary key auto_increment,
	title 			varchar(100)	not null,
	year 			int 			not null,
	rating 			varchar(5) 		not null,
	director 		varchar(50)		not null		
	);

create table actor (
	id 				int 			not null primary key auto_increment,
	firstName 		varchar(25)		not null,
	lastName 		varchar(25)		not null,
	gender 			varchar(6)		not null,
	birthDate		date			not null
	);


create table credit (
	id 				int 			not null primary key auto_increment,
	actorID			int 			not null,
	movieID			int 			not null,
	role			varchar(25)		not null,
	FOREIGN KEY (actorID) REFERENCES actor(id),
	FOREIGN KEY (movieID) REFERENCES movie(id),
    CONSTRAINT actor_movie unique (actorID, movieID)
    );
    
-- DML Insert Movie Data

insert into movie (id, title, year, rating, director)
	values (1,'Fight Club',1999, 'R', 'David Fincher');
insert into movie (id, title, year, rating, director)
	values (2,'Ford v Ferrari',2019, 'PG-13', 'James Mangold');
insert into movie (id, title, year, rating, director)
	values (3,'Snatch',2000, 'R', 'Guy Ritchie');
insert into movie (id, title, year, rating, director)
	values (4,'Bharat',2019, 'NR', 'Ali Abbas Zafar');


-- DML Insert Actor Data

insert into actor (id, firstName, lastName, gender, birthDate)
	values (1, 'Edward', 'Norton','Male', '1969-08-18');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (2, 'Brad', 'Pitt','Male', '1963-12-18');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (3, 'Helena', 'Bonham Carter','Female', '1966-05-26');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (4, 'Matt', 'Damon','Male', '1970-10-08');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (5, 'Christian', 'Bale','Male', '1974-01-30');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (6, 'Jason', 'Statham','Male', '1967-07-26');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (7, 'Salman', 'Khan','Male', '1965-12-27');
insert into actor (id, firstName, lastName, gender, birthDate)
	values (8, 'Disha', 'Patani','Female', '1992-06-13');
    
-- DML Insert Credit Data

insert into credit (id, actorID, movieID, role)
	values (1, 1, 1, 'The Narrator');
insert into credit (id, actorID, movieID, role)
	values (2, 2, 1, 'Tyler Durden');
insert into credit (id, actorID, movieID, role)
	values (3, 3, 1, 'Marla Singer');
insert into credit (id, actorID, movieID, role)
	values (4, 4, 2, 'Carroll Shelby');
insert into credit (id, actorID, movieID, role)
	values (5, 5, 2, 'Ken Miles');
insert into credit (id, actorID, movieID, role)
	values (6, 2, 3, "Mickey O'Neil");
insert into credit (id, actorID, movieID, role)
	values (7, 6, 3, 'Turkish');
insert into credit (id, actorID, movieID, role)
	values (8, 7, 4, 'Bharat');
insert into credit (id, actorID, movieID, role)
	values (9, 8, 4, 'Radha');


