CREATE TABLE Person (
    id INTEGER PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    birth_year INTEGER NOT NULL,
    role VARCHAR(10) NOT NULL
);

CREATE TABLE Movie (
    id INTEGER PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    director VARCHAR(30) NOT NULL,
    date DATE NOT NULL
);

CREATE TABLE Show (
    id INTEGER PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    date DATE NOT NULL,
    director VARCHAR(30) NOT NULL
);

CREATE TABLE Platform (
    id INTEGER PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE MovieActor (
    movie_id INTEGER NOT NULL REFERENCES Movie(id),
    person_id INTEGER NOT NULL REFERENCES Person(id),
    PRIMARY KEY (movie_id, person_id)
);

CREATE TABLE ShowActor (
    show_id INTEGER NOT NULL REFERENCES Show(id),
    person_id INTEGER NOT NULL REFERENCES Person(id),
    PRIMARY KEY (show_id, person_id)
);

CREATE TABLE MoviePlatform (
    movie_id INTEGER NOT NULL REFERENCES Movie(id),
    platform_id INTEGER NOT NULL REFERENCES Platform(id),
    PRIMARY KEY (movie_id, platform_id)
);

CREATE TABLE ShowPlatform (
    show_id INTEGER NOT NULL REFERENCES Show(id),
    platform_id INTEGER NOT NULL REFERENCES Platform(id),
    PRIMARY KEY (show_id, platform_id)
);
