-- 1 Retrieve the title, release year, and length of all movies in the database
SELECT title,release_year,length from film;
-- 2 List the titles and descriptions of movies released after the year 2000.
select title,description  from film
where release_year>2000;
-- 3 display the first 10 movie titles in alphabetical order.
select title  from film  order by title asc limit 10;
-- 4 Show the titles of movies where the title contains the word "Action
select title from film  where  title  like('Action%' );
--5 List the titles of movies that contain the word "Love" in any case (case-insensitive).
select title from film  where  title  like('%Love%' );
--6 Display the title of movies in uppercase and their description in lowercase.
select upper(title),lower(description) from film;
--7Retrieve the first name and last name of customers whose last name starts with "A" and their first name contains "e" or "E".
select (first_name || last_name) as full_name FROM customer where first_name ilike('%e%') and last_name like('A%');
--8List the titles of movies with a rental rate greater than $4.00, ordered by rental rate in descending order
select title , rental_rate  from film where rental_rate > 3      order by rental_rate desc;
--9 Display the titles of the 5 longest movies.
select title                            from film order by length desc limit 5 ;
--10 Find the titles of movies that have "dog" anywhere in their title and were released before the year 2005
select title from film where title like('%dog%') and release_year<    2005;
--11 List the first name and last name of customers whose last name starts with "M" and their first name has an "a" or "A" in the second position
select first_name,last_name from customer where first_name ilike('_a%') and last_name like('M%');
--12 Retrieve the titles of movies that contain the word "fantasy" and sort them in alphabetical order.
Select title from film where title ILIKE('%Fantasy%') order by title asc;



