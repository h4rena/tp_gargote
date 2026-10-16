CREATE TABLE commande(
id_commande SERIAL PRIMARY KEY,
date DATE
);

CREATE TABLE plat_commandes(
id_platcommande SERIAL PRIMARY KEY,
id_commande INT,
id_plat INT,
quantite INT,
FOREIGN KEY (id_commande) REFERENCES commande(id_commande),
FOREIGN KEY (id_plat) REFERENCES plats(id_plat)
);

INSERT INTO commande (id_commande, date) VALUES
(1, '2026-10-01'),
(2, '2026-10-02'),
(3, '2026-10-03');

INSERT INTO plat_commandes (id_commande, id_plat, quantite) VALUES
(1, 1, 2),
(1, 3, 1),
(2, 2, 1),
(2, 4, 3),
(3, 5, 2);