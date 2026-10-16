CREATE DATABASE tpgargote;
\c tpgargote;

-- etape-01 CARTE: liste des plats avec leur prix

CREATE TABLE plats(
id_plat SERIAL PRIMARY KEY,
nom_plat VARCHAR(100),
categories VARCHAR(100),
prix INT
);

INSERT INTO plats(nom_plat,categories,prix) VALUES 
('Romazava','plat malagasy',7000),
('Ravitoto sy henakisoa','plat malagasy',8000),
('Akoho sy voanio','plat malagasy',8500),
('Mi sao','plat chinois',6000),
('Soupe chinoise','Soupe',5000),
('Mofo gasy (les 4)','dessert et gouter',1000),
('Ranon ampango','boisson',500);
