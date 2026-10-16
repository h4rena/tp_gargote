CREATE TABLE categories(
id_categorie SERIAL PRIMARY KEY,
nom_categorie VARCHAR(100)
);

INSERT INTO categories(nom_categorie) VALUES 
('plat malagasy'),
('plat chinois'),
('Soupe'),
('dessert et gouter'),
('boisson');


ALTER TABLE plats ADD COLUMN id_categorie INT REFERENCES categories(id_categorie);
ALTER TABLE plats DROP COLUMN categories;

UPDATE plats SET id_categorie = 1 WHERE id_plat IN (1,2,3);
UPDATE plats SET id_categorie = 2 WHERE id_plat = 4;
UPDATE plats SET id_categorie = 3 WHERE id_plat = 5;
UPDATE plats SET id_categorie = 4 WHERE id_plat = 6;
UPDATE plats SET id_categorie = 5 WHERE id_plat = 7;

