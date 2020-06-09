USE MovieForum;
CREATE TABLE Movie (
    Movie_Name varchar(256) NOT NULL,
    Rating varchar(256),
    Tomato_score int,
    IMDB_score float,
    World_Box int,
    PRIMARY KEY (Movie_Name)
);
CREATE TABLE Producer (
    PName VARCHAR(256) NOT NULL,
    Country VARCHAR(32),
    Founded DATE,
    PRIMARY KEY (PName)
);
CREATE TABLE Director (
    DName VARCHAR(256) NOT NULL,
    Sex VARCHAR(16),
    BDate DATE,
    PRIMARY KEY (DName)
);
CREATE TABLE User (
    ID VARCHAR(256) NOT NULL,
    BDate DATE,
    Sex VARCHAR(32),
    PRIMARY KEY (ID)
);
CREATE TABLE Platform (
    Plat_Name VARCHAR(256) NOT NULL,
    Official_web VARCHAR(2083),
    Category VARCHAR(64),
    PRIMARY KEY (Plat_Name)
);
CREATE TABLE Dislike (
    user_id VARCHAR(256) NOT NULL,
    MNAME VARCHAR(256) NOT NULL,
    PRIMARY KEY (user_id, MNAME),
    FOREIGN KEY (user_id) REFERENCES User(ID),
    FOREIGN KEY (MNAME) REFERENCES Movie(Movie_Name)
);
CREATE TABLE Love (
    user_id VARCHAR(256) NOT NULL,
    MNAME VARCHAR(256) NOT NULL,
    PRIMARY KEY (user_id, MNAME),
    FOREIGN KEY (user_id) REFERENCES User(ID),
    FOREIGN KEY (MNAME) REFERENCES Movie(Movie_Name)
);
CREATE TABLE Available (
    PNAME VARCHAR(256) NOT NULL,
    MNAME VARCHAR(256) NOT NULL,
    PRIMARY KEY (PNAME, MNAME),
    FOREIGN KEY (PNAME) REFERENCES Platform(Plat_Name),
    FOREIGN KEY (MNAME) REFERENCES Movie(Movie_Name)
);
CREATE TABLE Produced (
    ProdName VARCHAR(256) NOT NULL,
    MNAME VARCHAR(256) NOT NULL,
    DNAME VARCHAR(256) NOT NULL,
    PRIMARY KEY (ProdName, MNAME, DNAME),
    FOREIGN KEY (ProdName) REFERENCES Producer(PName),
    FOREIGN KEY (MNAME) REFERENCES Movie(Movie_Name),
    FOREIGN KEY (DNAME) REFERENCES Director(DName)
);

SHOW TABLES;



