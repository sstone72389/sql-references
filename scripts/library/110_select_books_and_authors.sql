SELECT a.name, COUNT(*)
FROM authors AS a
  INNER JOIN books AS b
    ON b.author_id = a.id
GROUP BY a.name
HAVING COUNT(*) > 2
ORDER BY COUNT(*) DESC;

SELECT b.title, a.name
FROM books AS b
  INNER JOIN authors AS a
    ON b.author_id = a.id
WHERE a.name IN ('Agatha Christie', 'Ernest Hemingway')
ORDER BY a.name;
