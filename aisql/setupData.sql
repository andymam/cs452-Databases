-- Insert into Person table
INSERT INTO Person (id, name, birth_year, role) VALUES
(1, 'Laura Stevenson', 1985, 'actor'),
(2, 'Bob Jones', 1978, 'director'),
(3, 'Charlie Brown', 1990, 'actor'),
(4, 'Jimmy Hendricks', 1982, 'actor'),
(5, 'Sydney Smith', 1975, 'director'),
(6, 'Jordan Malone', 1988, 'actor'),
(7, 'Jordan Malone', 1988, 'director'),
(8, 'John Singleton', 1975, 'director'),
(9, 'Ice Cube', 1975, 'actor');

-- Insert into Movie table
INSERT INTO Movie (id, name, director, date) VALUES
(1, 'Adventures in Coding', 'Bob Jones', '2023-07-01'),
(2, 'The Bug Hunter', 'Sydney Smith', '2022-09-15'),
(3, 'Debugging the Universe', 'Bob Jones', '2021-11-10'),
(4, 'Boyz n the Hood', 'John Singleton', '1991-07-02');

-- Insert into Show table
INSERT INTO Show (id, name, date, director) VALUES
(1, 'Tech Talk: The Series', '2023-03-15', 'Sydney Smith'),
(2, 'Life as a Developer', '2022-12-01', 'Bob Jones'),
(3, 'The Algorithm Chronicles', '2021-05-20', 'Sydney Smith');

-- Insert into MovieActor table
INSERT INTO MovieActor (movie_id, person_id) VALUES
(1, 1),
(1, 3),
(2, 4),
(2, 6),
(3, 3),
(3, 1),
(4, 9);

-- Insert into ShowActor table
INSERT INTO ShowActor (show_id, person_id) VALUES
(1, 4),
(1, 3),
(2, 6),
(3, 1);

-- Insert into Platform table
INSERT INTO Platform (id, name) VALUES
(1, 'Netflix'),
(2, 'Amazon Prime'),
(3, 'Hulu'),
(4, 'Disney+'),
(5, 'HBO Max');

-- Insert into MoviePlatform table
INSERT INTO MoviePlatform (movie_id, platform_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5);

-- Insert into ShowPlatform table
INSERT INTO ShowPlatform (show_id, platform_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(3, 4);
