select M.*
from Movie M
where exists (
    select * from User U, Love L
    where U.id = L.user_id and M.Movie_Name = L.Mname
    and U.id = 'Ray'
)

SELECT count(Dislike.user_id) FROM Movie, Dislike WHERE Movie.Movie_name = Dislike.Mname and Movie.Movie_name='{key}'GROUP BY Movie.Movie_name
SELECT Movie_Name, Movie_image, count(Love.user_id) FROM Movie, Love WHERE Movie.Movie_name = Love.Mname GROUP BY Movie.Movie_name HAVING count(Love.user_id) > 2;