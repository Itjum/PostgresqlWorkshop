SELECT DISTINCT customer_surname FROM booking
WHERE ("end_date"::date > '2019-03-11'::date) AND ("start_date"::date <  '2019-03-11'::date)
ORDER BY customer_surname;
