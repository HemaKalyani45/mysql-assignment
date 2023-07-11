create database mysql_task;
use mysql_task;
create table movies(movie_id int primary key,movie_title varchar(50),release_year int,director_id int);
insert into movies(movie_id,movie_title,release_year,director_id) values(111,'Sitaramam',2022,234),(222,'Love Today',2022,5576),(333,'Raja Rani',2011,2345),(444,'Andala Rakshasi',2011,234),(555,'Bigil',2019,2345),(666,'Raja The Great',2017,5901),(777,'Comali',2018,5576);
create table directors(director_id int primary key,director_name varchar(50));
insert  into directors( director_id,director_name) values(234,'Hanu Raghavapudi'),(5576,'Pradeep Ranganathan'),(2345,'Atlee Kumar'),(5901,'Anil Ravipudi');
create table genres(genre_id int primary key,genre_name varchar(50));
insert  into genres( genre_id,genre_name) values(765,'historical drama'),(632,'love'),(943,'romantic-comedy'),(432,'romantic-comedy'),(298,'sports action'),(147,'comedy'),(356,'comdey');
create table movie_genres(movie_id int primary key,genre_id int );
insert into movie_genres(movie_id,genre_id) values(111,765), (222,632),(333,943),(444,432),(555,298),(666,147),(777,356);
select movie_title,director_name from movies join directors on directors.director_id=movies.director_id;
select movie_title,release_year,director_name from movies join directors on directors.director_id=movies.director_id;
select director_name,movie_title from directors left  join movies on directors.director_id=movies.director_id;
select movie_title, release_year, director_name from movies left join directors on movies.director_id = directors.director_id;
select movie_title, genre_name from movies cross join genres;



