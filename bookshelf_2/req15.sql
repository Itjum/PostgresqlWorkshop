SELECT author as name, concat(count(DISTINCT title), CASE WHEN count(DISTINCT title) > 1
       THEN ' books'
	ELSE
		' book' END) as stocks FROM books
GROUP BY author
ORDER BY author;
