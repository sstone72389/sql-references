-- match author name with the old data in the books table so that we can fill in the
-- author_id foreign key

UPDATE books
SET author_id = authors.id
FROM authors
WHERE books.author = authors.name
;
