-- users
INSERT INTO users (username, password, email)
VALUES("mamps", 123456, "mamps@email.com");

-- lists
INSERT INTO lists (title, user_id)
VALUES
    ("All Time Favourites", 1),
    ("Best of 2020s", 1),
    ("Top Jazz", 1),
    ("Underground Hip Hop", 1),
    ("Ambient", 1),
    ("Experimental", 1);


-- albums
INSERT INTO albums (album, artist, release_year, list_id)
VALUES
    ("Music Has The Right to Children", "Boards of Canada", 1998, 1),
    ("Since I Left You", "The Avalanches", 2000, 1),
    ("Abbey Road", "The Beatles", 1969, 1),
    ("Laughing Stock", "Talk Talk", 1990, 1),
    ("Dots And Loops", "Stereolab", 1997, 1),
    ("Enter The Wu-Tang(36 Chambers)", "Kendrick Lamar", 2015, 1),
    ("Promises", "Floating Points & Pharoah Sanders", 2021, 2),
    ("Hellfire", "Black Midi", 2022, 2),
    ("Kind of Blue", "Miles Davis", 1959, 3),
    ("Karma", "Pharoah Sanders", 1969, 3),
    ("My Favorite Things", "John Coltrane", 1961, 3),
    ("Madvillainy", "Madvillain", 2004, 4),
    ("Midnight Marauders", "A Tribe Called Quest", 2004, 4),
    ("Selected Ambient Works Volume II", "Aphex Twin", 1994, 5),
    ("GAS", "Pop", 1994, 5),
    ("Confield", "Autechre", 2001, 6),
    ("The Disintegration Loops", "William Basinski", 2002, 6);
