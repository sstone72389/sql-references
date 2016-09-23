-- this query answers the question "How many books does each other have,
-- for those authors that have more than 2 books?"
SELECT a.name, COUNT(*)
FROM authors a -- the second argument is an alias
INNER JOIN books b -- displaying two tables at once
  ON b.author_id = a.id -- ON is sort of like WHERE, but for JOINs (look up the link)
GROUP BY a.name -- an individual author only appears once
HAVING COUNT(*) > 2 -- only authors that have more than two books
ORDER BY COUNT(*) DESC; -- sort with most books first

-- this query answers the question "Which books were written by either Ernest
-- Hemingway or Shirley Jackson?"
SELECT b.title, a.name -- only show book title and author name in output
FROM books b -- alias books as b
INNER JOIN authors a -- alias authors as a, do a JOIN to show data from two tables at once
  ON b.author_id = a.id -- this tells SQL what data is shared between the tablesx
WHERE a.name IN ('Ernest Hemingway', 'Shirley Jackson') -- only retrieve these two authors
ORDER BY a.name DESC; -- sort in reverse alphabetical order by author name
