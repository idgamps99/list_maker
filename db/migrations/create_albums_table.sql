CREATE TABLE albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    album TEXT NOT NULL,
    artist TEXT NOT NULL,
    release_year INTEGER,
    list_id INTEGER NOT NULL,
    FOREIGN KEY (list_id) REFERENCES lists(id)
);
