CREATE TABLE updates (
    id INT,
    "date" TIMESTAMP,
    "old population" BIGINT,
    "new population" BIGINT
);

CREATE TRIGGER store_earth_population_updates
BEFORE 

CREATE VIEW view_earth_population_evolution AS
SELECT * FROM updates
ORDER BY "date";
--attention va peut-etre falloir changer le format de data"
