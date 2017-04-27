-- how many authors have more than two books in our data-set
SELECT a.name, COUNT(*)
FROM authors a
INNER JOIN books b
  ON b.author_id = a.id
GROUP BY a.name
HAVING COUNT(*) > 2
ORDER BY COUNT(*) DESC
;

-- how do I view both authors and boks in the same report?
