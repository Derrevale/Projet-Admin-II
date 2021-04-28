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