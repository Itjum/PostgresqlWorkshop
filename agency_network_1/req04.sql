SELECT count(DISTINCT city), country
FROM destination
GROUP BY country ORDER BY count desc, country;
