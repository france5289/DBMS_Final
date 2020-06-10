USE MovieForum;

INSERT INTO Movie (
    Movie_Name,
    Rating,
    Tomato_score,
    IMDB_score,
    World_Box,
    movie_image
  )
VALUES (
    '1917',
    'PG-12',
    89,
    8.3,
    95000000,
    'https://m.media-amazon.com/images/M/MV5BOTdmNTFjNDEtNzg0My00ZjkxLTg1ZDAtZTdkMDc2ZmFiNWQ1XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_SY1000_CR0,0,631,1000_AL_.jpg'
  );

INSERT INTO Movie (
    Movie_Name,
    Rating,
    Tomato_score,
    IMDB_score,
    World_Box,
    movie_image
  )
VALUES (
    'Joker',
    'R-18',
    68,
    8.5,
    55000000,
    'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,674,1000_AL_.jpg'
  );

INSERT INTO Movie (
    Movie_Name,
    Rating,
    Tomato_score,
    IMDB_score,
    World_Box,
    movie_image
  )
VALUES (
    'Parasite',
    'R-12',
    99,
    8.6,
    114000000,
    'https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SY1000_CR0,0,674,1000_AL_.jpg'
  );

INSERT INTO Movie (
    Movie_Name,
    Rating,
    Tomato_score,
    IMDB_score,
    World_Box,
    movie_image
  )
VALUES (
    'Knives Out',
    'PG-13',
    97,
    7.9,
    40000000,
    'https://m.media-amazon.com/images/M/MV5BMGUwZjliMTAtNzAxZi00MWNiLWE2NzgtZGUxMGQxZjhhNDRiXkEyXkFqcGdeQXVyNjU1NzU3MzE@._V1_SY1000_SX675_AL_.jpg'
  );

INSERT INTO Movie (
    Movie_Name,
    Rating,
    Tomato_score,
    IMDB_score,
    World_Box,
    movie_image
  )
VALUES (
    'The Shawshank Redemption',
    'R',
    90,
    9.3,
    25000000,
    'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg'
  );

INSERT INTO Director (DName, Sex, BDate)
VALUES (
    'Sam Mendes',
    'Male',
    '1965-08-11'
  );


INSERT INTO Director (DName, Sex, BDate)
VALUES (
    'Todd Philips',
    'Male',
    '1970-10-20'
  );

INSERT INTO Director (DName, Sex, BDate)
VALUES (
    'Frank Darabont',
    'Male',
    '1959-01-28'
  );
INSERT INTO Director (DName, Sex, BDate)
VALUES (
    'Rian Johnson',
    'Male',
    '1973-12-17'
  );

INSERT INTO Director (DName, Sex, BDate)
VALUES (
    'Bong Joon Ho',
    'Male',
    '1969-9-14'
  );


INSERT INTO Producer (PName, Country, Founded)
VALUES (
    'DreamWorks',
    'USA',
    '1994-10-12'
  );

INSERT INTO Producer (PName, Country, Founded)
VALUES (
    'Warner Bros',
    'USA',
    '1923-04-04'
  );

INSERT INTO Producer (PName, Country, Founded)
VALUES (
    'Sony Pictures',
    'USA',
    '1987-12-21'
    );

INSERT INTO Producer (PName, Country, Founded)
VALUES (
    'Walt Disney Studios',
    'USA',
    '1923-10-16'
  );

INSERT INTO Producer (PName, Country, Founded)
VALUES (
    'Universal Pictures',
    'USA',
    '1912-04-30'
  );

INSERT INTO Platform (Plat_Name, Official_web, Category)
VALUES (
    'Netflix',
    'www.netflix.com',
    'Streamer'
  );

INSERT INTO Platform (Plat_Name, Official_web, Category)
VALUES (
    'Vieshow Cinemas',
    'https://www.vscinemas.com.tw/vsweb/',
    'Theater'
  );

INSERT INTO User (ID, BDate, Sex)
VALUES (
    'Winnie',
    '1997-06-04',
    'Male'
  );

INSERT INTO User (ID, BDate, Sex)
VALUES (
    'Trumpp',
    '1961-07-11',
    'Male'
  );
