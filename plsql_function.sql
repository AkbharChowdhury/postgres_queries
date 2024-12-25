CREATE FUNCTION movie_search (term VARCHAR, genre VARCHAR) 
    RETURNS TABLE (
        movie_title VARCHAR,
        film_genre VARCHAR
) 
AS $$
BEGIN
    RETURN QUERY 
SELECT
        title,
        genres
    FROM
        movies
    WHERE
        title ILIKE term 
		AND genres ILIKE genre 
        ORDER BY title

		;
END; $$ 

LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION movie_search(term VARCHAR, genre VARCHAR)
   RETURNS TABLE (
        movie_title VARCHAR,
        film_genre VARCHAR
) 
AS 
$$
   SELECT
        title,
        genres
    FROM
        movies
    WHERE
        title ILIKE term 
        AND genres ILIKE genre ;
$$
LANGUAGE sql;

SELECT * FROM movie_search('%p%', '%thriller%');
