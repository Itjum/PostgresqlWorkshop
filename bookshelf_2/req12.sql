SELECT title, author as name FROM books
INNER JOIN authors ON authors.name = books.author
WHERE release > death_date
ORDER by title, name;
