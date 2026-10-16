-- afficher les plats du plus cher au moins cher
SELECT * FROM plats ORDER BY prix DESC;

-- nombre de plats par catégorie, y compris les catégories sans plat
SELECT c.id_categorie, c.nom_categorie, COUNT(*) AS nombre_de_plats
FROM categories c LEFT JOIN plats p ON p.id_categorie = c.id_categorie
GROUP BY c.id_categorie, c.nom_categorie;