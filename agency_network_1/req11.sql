SELECT id,
    CASE
        WHEN (CURRENT_DATE < start_date) THEN 'Booked'
        WHEN (CURRENT_DATE > start_date) AND (CURRENT_DATE < end_date) THEN 'Ongoing'
        WHEN (CURRENT_DATE > end_date) THEN 'Done'
    END AS "trip status"
FROM booking
ORDER BY "trip status", id;
