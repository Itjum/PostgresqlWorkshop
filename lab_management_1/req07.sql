SELECT assistant, SUM(price) AS price FROM transaction
INNER JOIN can ON transaction.can = can.name
GROUP BY assistant
ORDER BY price DESC
LIMIT 3;
