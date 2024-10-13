select * 
from netflix_titles 

-- Questions

--How many movies are there from each country?

SELECT  country , COUNT(*) AS movies_count
FROM netflix_titles
WHERE country IS NOT NULL 
GROUP BY country 
ORDER BY movies_count DESC


--What are the unique directors in the dataset?
SELECT DISTINCT (director)
FROM netflix_titles 
WHERE director IS NOT NULL


--Which movies were released in a specific year (e.g., 2020)?
SELECT title 
FROM netflix_titles
WHERE release_year = 2020 AND 
 type = 'Movie'

-- What are the top 10 highest-rated movies?
SELECT TOP 10 title , rating 
FROM netflix_titles
ORDER BY rating DESC 


-- How many movies fall under each rating category?
SELECT rating , count (*) AS movie_count
FROM netflix_titles
GROUP by rating


--What movies were added after January 1, 2021?
SELECT * 
FROM netflix_titles
WHERE date_added > '2021-01-01'


--Who is the director with the most movies in the dataset?
SELECT director , COUNT(*) AS  movies_count
FROM netflix_titles
WHERE director IS NOT NULL 
GROUP BY director 
ORDER BY movies_count DESC
 
-- Which movies feature a specific cast member (e.g., "Kappei Yamaguchi")?
SELECT title 
FROM netflix_titles
WHERE CAST LIKE '%Kappei Yamaguchi%'

--What movies are listed under a specific genre (e.g., "Comedy")?
SELECT title
FROM netflix_titles
WHERE listed_in LIKE '%Comedies%'

--How many movies were added each year?
SELECT YEAR(date_added) AS year  , COUNT(*) AS movies_count
FROM netflix_titles
GROUP BY YEAR(date_added)
ORDER BY year DESC 


--What are the top 3 countries with the most movies, and what movies do they have?
SELECT TOP 3 country ,count(*) AS movies_count
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country 
ORDER BY movies_count DESC



--How have the number of movies released each year changed over the past decade?
SELECT YEAR(date_added) AS year, COUNT (*)  AS movies_count
FROM netflix_titles
GROUP BY YEAR(date_added)
ORDER BY year DESC 