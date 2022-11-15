SELECT DISTINCT email
FROM customer
WHERE email SIMILAR TO '%@gmail%'
ORDER BY email;
