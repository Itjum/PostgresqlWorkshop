SELECT regexp_replace(country, '[^a-zA-Z]', '', 'gi') AS country,
regexp_replace(city, '[^a-zA-Z]', '', 'gi') AS city
FROM destination
ORDER BY country, city;
