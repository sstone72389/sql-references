ALTER TABLE ingredients
ADD COLUMN recipe_id INTEGER REFERENCES ingredients (id);

CREATE INDEX ON ingredients (recipe_id);
