SELECT login FROM assistant
WHERE NOT EXISTS (SELECT assistant FROM transaction WHERE assistant = login)
ORDER BY login;
