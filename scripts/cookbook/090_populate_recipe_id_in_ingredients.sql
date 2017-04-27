--CAN SELECT MULTIPLE AT SAME TIME

UPDATE ingredients
SET recipe_id = (SELECT id FROM recipe WHERE name = 'mystery meatloaf')
WHERE name IN ('Mayo', 'Ketchup')
;
