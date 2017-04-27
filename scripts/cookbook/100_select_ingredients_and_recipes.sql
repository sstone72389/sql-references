-- show associated ingredients and recipe (using id as association)
SELECT r.name, i.name
FROM recipe r
INNER JOIN ingredients i
  ON i.recipe_id = r.id
;
