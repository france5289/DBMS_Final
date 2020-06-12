select M.*
from Movie M
where exists (
    select * from User U, Love L
    where U.id = L.user_id and M.Movie_Name = L.Mname
    and U.id = 'Ray'
)