SELECT COUNT(a.actorid) AS qtd, a.actorname
FROM actor AS a
INNER JOIN filme_actor AS fa ON a.actorid = fa.actorid
INNER JOIN filmes AS f ON f.movieid = fa.movieid
INNER JOIN genre_movies AS gm ON gm.movieid = f.movieid
INNER JOIN genres AS g ON g.genreid = gm.genreid
WHERE g.genre = 'Adult'
GROUP BY a.actorname ORDER BY qtd DESC 
LIMIT 10


SELECT COUNT(gm.movieid) AS qtd, a.actorname
FROM actor AS a
INNER JOIN filme_actor AS fa ON fa.actorid = a.actorid
INNER JOIN (
    SELECT gm.movieid
    FROM genre_movies AS gm, genres AS g
    WHERE g.genreid = gm.genreid
	AND g.genre LIKE 'Game-Show'
)AS gm ON fa.movieid = gm.movieid
GROUP BY a.actorname
ORDER BY qtd DESC
LIMIT 10