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

INSERT INTO Dislike VALUES ('Trumpp','Parasite');

INSERT INTO Director (DName, Sex, BDate)
VALUES (
    'Guy Ritchie',
    'Male',
    '1968-09-10'
  );

INSERT INTO Director (DName, Sex, BDate)
VALUES (
    'Quentin Tarantino',
    'Male',
    '1963-3-27'
  );
INSERT INTO Director (DName, Sex, BDate)
VALUES (
    'Anthony Russo',
    'Male',
    '1970-02-03'
  );

INSERT INTO Director (DName, Sex, BDate)
VALUES (
    'Francis Ford Coppola',
    'Male',
    '1939-04-07'
  );
INSERT INTO Director (DName, Sex, BDate)
VALUES (
    'Christopher Nolan',
    'Male',
    '1970-07-30'
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
    'Dunkirk',
    'R-12',
    93,
    7.9,
    100000000,
    'https://m.media-amazon.com/images/M/MV5BN2YyZjQ0NTEtNzU5MS00NGZkLTg0MTEtYzJmMWY3MWRhZjM2XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_UX182_CR0,0,182,268_AL_.jpg'
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
    'Batman Begins',
    'PG-12',
    84,
    8.2,
    204100000,
    'https://m.media-amazon.com/images/M/MV5BZmUwNGU2ZmItMmRiNC00MjhlLTg5YWUtODMyNzkxODYzMmZlXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UY268_CR9,0,182,268_AL_.jpg'
  );

INSERT INTO Producer (PName, Country, Founded)
VALUES (
    'STX Entertainment',
    'USA',
    '2014-03-10'
  );
INSERT INTO Producer (PName, Country, Founded)
VALUES (
    'Columbia Pictures',
    'USA',
    '1924-01-10'
  );
INSERT INTO Producer (PName, Country, Founded)
VALUES (
    'Marvel Studios',
    'USA',
    '1993-12-07'
  );
INSERT INTO Producer (PName, Country, Founded)
VALUES (
    'Paramount Pictures',
    'USA',
    '1912-05-08'
  );
INSERT INTO Producer (PName, Country, Founded)
VALUES (
    'Lionsgate',
    'Canada',
    '1997-07-10'
  );

INSERT INTO Producer (PName, Country, Founded)
VALUES (
    'Barunson E&A',
    'South Korea',
    NULL
  );
INSERT INTO Platform (Plat_Name, Official_web, Category)
VALUES (
    'Apple TV+',
    'https://www.apple.com/tw/apple-tv-plus/',
    'Streamer'
  );
INSERT INTO Platform (Plat_Name, Official_web, Category)
VALUES (
    'iTunes',
    'https://www.apple.com/tw/itunes/',
    'Streamer'
  );
INSERT INTO Platform (Plat_Name, Official_web, Category)
VALUES (
    'Amazon Prime Video',
    'https://www.primevideo.com/',
    'Streamer'
  );
INSERT INTO Platform (Plat_Name, Official_web, Category)
VALUES (
    'Ambassador Theater',
    'https://www.ambassador.com.tw/',
    'Theater'
  );
INSERT INTO Platform (Plat_Name, Official_web, Category)
VALUES (
    'Showtime Cinemas',
    'https://www.showtimes.com.tw/',
    'Theater'
  );
INSERT INTO Platform (Plat_Name, Official_web, Category)
VALUES (
    'Cinemark',
    'https://www.cinemark.com.tw/',
    'Theater'
  );
INSERT INTO Platform (Plat_Name, Official_web, Category)
VALUES (
    'MOD',
    'http://mod.cht.com.tw/',
    'Streamer'
  );
INSERT INTO Platform (Plat_Name, Official_web, Category)
VALUES (
    'Catchplay+',
    'https://www.catchplay.com/tw/home',
    'Streamer'
  );

INSERT INTO User (ID, BDate, Sex)
VALUES (
    'Abby',
    '1997-02-23',
    'Female'
  );
INSERT INTO User (ID, BDate, Sex)
VALUES (
    'Han',
    '1957-06-18',
    'Male'
  );
INSERT INTO User (ID, BDate, Sex)
VALUES (
    'Duke',
    '1993-03-24',
    'Male'
  );
INSERT INTO User (ID, BDate, Sex)
VALUES (
    'Bonnie',
    '2001-07-23',
    'Female'
  );
INSERT INTO User (ID, BDate, Sex)
VALUES (
    'Hopp',
    '2002-08-14',
    'Male'
  );
INSERT INTO User (ID, BDate, Sex)
VALUES (
    'Ray',
    '1987-8-30',
    'Male'
  );
INSERT INTO User (ID, BDate, Sex)
VALUES (
    'Janet',
    '1988-12-24',
    'Female'
  );
INSERT INTO User (ID, BDate, Sex)
VALUES (
    'Balentine',
    '1983-03-21',
    'Male'
  );
INSERT INTO Dislike VALUES ('Winnie', 'Avengers: Endgame');
INSERT INTO Dislike VALUES ('Balentine', 'The Gentlemen');
INSERT INTO Dislike VALUES ('Janet', '1917');
INSERT INTO Dislike VALUES ('Ray', 'The Gentlemen');
INSERT INTO Dislike VALUES ('Ray', 'Knives Out');
INSERT INTO Dislike VALUES ('Hopp', 'Once Upon a Time... in Hollywood');
INSERT INTO Dislike VALUES ('Han', 'Joker');
INSERT INTO Dislike VALUES ('Abby', 'The Shawshank Redemption');
INSERT INTO Dislike VALUES ('Ray', 'The Shawshank Redemption');

INSERT INTO Love VALUES ('Trumpp', '1917');
INSERT INTO Love VALUES ('Balentine', '1917');
INSERT INTO Love VALUES ('Ray', '1917');
INSERT INTO Love VALUES ('Hopp', 'Joker');
INSERT INTO Love VALUES ('Janet', 'Parasite');
INSERT INTO Love VALUES ('Ray', 'Parasite');
INSERT INTO Love VALUES ('Ray', 'Batman Begins');
INSERT INTO Love VALUES ('Abby', 'Batman Begins');
INSERT INTO Love VALUES ('Hopp', 'Batman Begins');
INSERT INTO Love VALUES ('Balentine', 'Knives Out');
INSERT INTO Love VALUES ('Bonnie', 'Once Upon a Time... in Hollywood');
INSERT INTO Love VALUES ('Bonnie', 'Parasite');
INSERT INTO Love VALUES ('Bonnie', 'The Gentlemen');
INSERT INTO Love VALUES ('Bonnie', '1917');
INSERT INTO Love VALUES ('Bonnie', 'The Shawshank Redemption');
INSERT INTO Love VALUES ('Ray', 'Joker');

INSERT INTO Available VALUES ('iTunes', '1917');
INSERT INTO Available VALUES ('Catchplay+', '1917');
INSERT INTO Available VALUES ('iTunes', 'Joker');
INSERT INTO Available VALUES ('Catchplay+', 'Joker');
INSERT INTO Available VALUES ('iTunes', 'Avengers: Endgame');
INSERT INTO Available VALUES ('iTunes', 'Knives Out');
INSERT INTO Available VALUES ('iTunes', 'Once Upon a Time... in Hollywood');
INSERT INTO Available VALUES ('Netflix', 'Once Upon a Time... in Hollywood');
INSERT INTO Available VALUES ('Catchplay+', 'Parasite');
INSERT INTO Available VALUES ('iTunes', 'Parasite');
INSERT INTO Available VALUES ('iTunes', 'The Gentlemen');
INSERT INTO Available VALUES ('Netflix', 'The Shawshank Redemption');
INSERT INTO Available VALUES ('iTunes', 'The Shawshank Redemption');
INSERT INTO Available VALUES ('Amazon Prime Video', 'The Shawshank Redemption');
INSERT INTO Available VALUES ('Amazon Prime Video', 'Dunkirk');
INSERT INTO Available VALUES ('iTunes', 'Dunkirk');
INSERT INTO Available VALUES ('Netflix', 'Dunkirk');
INSERT INTO Available VALUES ('Catchplay+', 'Dunkirk');
INSERT INTO Available VALUES ('Amazon Prime Video', 'Batman Begins');
INSERT INTO Available VALUES ('Netflix', 'Batman Begins');
INSERT INTO Available VALUES ('iTunes', 'Batman Begins');
INSERT INTO Available VALUES ('Catchplay+', 'Batman Begins');
INSERT INTO Available VALUES ('Vieshow Cinemas', 'Batman Begins');
INSERT INTO Produced VALUES ('Universal Pictures', '1917', 'Sam Mendes');
INSERT INTO Produced VALUES ('Marvel Studios', 'Avengers: Endgame', 'Anthony Russo');
INSERT INTO Produced VALUES ('Warner Bros', 'Joker', 'Todd Phillips');
INSERT INTO Produced VALUES ('Lionsgate', 'Knives Out', 'Rian Johnson');
INSERT INTO Produced VALUES ('Columbia Pictures', 'Once Upon a Time... in Hollywood', 'Quentin Tarantino');
INSERT INTO Produced VALUES ('Barunson E&A', 'Parasite', 'Bong Joon Ho');
INSERT INTO Produced VALUES ('STX Entertainment', 'The Gentlemen', 'Guy Ritchie');
INSERT INTO Produced VALUES ('Columbia Pictures', 'The Shawshank Redemption', 'Frank Darabont');
INSERT INTO Produced VALUES ('Warner Bros', 'Dunkirk', 'Christopher Nolan');
INSERT INTO Produced VALUES ('Warner Bros', 'Batman Begins', 'Christopher Nolan');