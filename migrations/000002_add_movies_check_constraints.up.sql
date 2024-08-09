ALTER TABLE movies ADD constraint movies_runtime_check CHECK (runtime >= 0);

ALTER TABLE movies ADD constraint movies_year_check CHECK (
    year BETWEEN 1888 AND date_part('year', now())
);

ALTER TABLE movies ADD constraint genres_length_check CHECK (
    array_length(genres, 1) BETWEEN 1 AND 5
);
