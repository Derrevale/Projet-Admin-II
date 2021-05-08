CREATE TABLE Produits (
    prodId INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nomProduit varchar(255) NOT NULL,
    prodPrix decimal(6,2) NOT NULL
);

INSERT INTO Produits (nomProduit, prodPrix) 
VALUES ('table de ping pong', 5),
        ('petites voitures', 6.50),
        ('chaise à bascule', 25),
        ('ballon de football', 10),
        ('Toupies', 3.25);

CREATE TABLE Fournisseurs (
    entrepriseNom varchar(255) NOT NULL,
    entrepriseLocalite varchar(255) NOT NULL,
    entrepriseTel varchar(25) NOT NULL,
    entrepriseMail varchar(255) NOT NULL
);

INSERT INTO Fournisseurs(entrepriseNom, entrepriseLocalite,entrepriseTel,entrepriseMail)
VALUES  ('Wathelet', 'Charleroi', '071 15 17 29', 'contact@wathelet.be'),
        ('Binou', 'Lille', '071 59 87 28', 'contact@binou.be');