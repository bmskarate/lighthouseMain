/* SQL Exercise
====================================================================
We will be working with database imdb.db
You can download it here: https://drive.google.com/file/d/1E3KQDdGJs4a0i1RoYb8DEq0PFxCgI6cN/view?usp=sharing
*/


-- MAKE YOURSELF FAIMLIAR WITH THE DATABASE AND TABLES HERE





--==================================================================
/* TASK I
 Find the id's of movies that have been distributed by “Universal Pictures”.
*/
-- select movie_id, distributor_id from movie_distributors
-- where distributor_id=10;


/* TASK II
 Find the name of the companies that distributed movies released in 2006.
*/
-- select distributor_id, movie_distributors.movie_id, movies.year from movie_distributors
-- inner join movies
-- WHERE movies.movie_id=movie_distributors.Movie_id and movies.year=2006;


/* TASK III
Find all pairs of movie titles released in the same year, after 2010.
hint: use self join on table movies.
*/


/* TASK IV
 Find the names and movie titles of directors that also acted in their movies.
*/


/* TASK V
Find ALL movies realeased in 2011 and their aka titles.
hint: left join
*/




/* TASK VI
Find ALL movies realeased in 1976 OR 1977 and their composer's name.
*/




/* TASK VII
Find the most popular movie genres.
*/


/* TASK VIII
Find the people that achieved the 10 highest average ratings for the movies 
they cinematographed.
*/
-- select movies.rating, cinematographers.person_id, people.name from movies
-- inner join cinematographers
-- ON movies.movie_id=cinematographers.movie_id
-- inner join people
-- ON people.person_id=cinematographers.person_id
-- order by movies.rating DESC
-- LIMIT 10;


/* TASK IX
Find all countries which have produced at least one movie with a rating higher than
8.5.
hint: subquery
*/




/* TASK X
Find the highest-rated movie, and report its title, year, rating, and country. There
can be ties; if so, you should report for each of them.
*/
-- select rating, movies.title, year, aka_titles.note as'Country' from movies
-- inner join aka_titles
-- ON aka_titles.movie_id=movies.movie_id
-- order by rating DESC
-- LIMIT 3;



/* STRETCH BONUS
Find the pairs of people that have directed at least 5 movies and whose 
carees do not overlap (i.e. The release year of a director's last movie is 
lower than the release year of another director's first movie).
*/
