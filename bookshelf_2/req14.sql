SELECT name, 
    CASE WHEN death_date IS NULL THEN '2000-01-01'::DATE - birth_date
        ELSE
            death_date::DATE - birth_date::DATE
    END AS days
FROM authors
WHERE birth_date < '2000-01-01'::DATE
ORDER BY name;
