<html>

<head>
	<title> WoodyToys B2B </title> 
</head>

<body>

<form method="POST" action="#"> 
	<input type="search" placeholder="nom du produit" name="nomDuProduit">
	<button type="submit"> Enregistrer le nom du produit </button>
</form>

<?php 
	$langage_programmation = "PHP";
	echo "J'écris en " . $langage_programmation . " !";
	$bdd = new PDO('mysql:host=192.168.1.30;dbname=test2;charset=utf8', 'root', 'root');
	$reponse = $bdd->query("SELECT * FROM Produits");

	while($donneesProduits = $reponse->fetch())
					{
						echo  $donneesProduits["nomProduit"];
					}
					$reponse->closeCursor();

	if (isset($_POST["nomDuProduit"])) {
		$requete_insertion = $bdd -> prepare('INSERT INTO Produits(nomProduit) VALUES (:nomProduit_param)');

		$requete_insertion->execute(array(
			'nomProduit_param' => $_POST["nomDuProduit"] 
		));
	}
?>
</body>

</html>