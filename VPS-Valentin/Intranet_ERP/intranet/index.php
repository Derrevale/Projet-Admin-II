<!-- Page html de l'intranet -->

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="index.css">
    <title>WoodyToys</title>
</head>
<body>
 
    <form method="POST" action=""> 
	<input type="search" placeholder="Fournisseur" name="entrepriseNom">
	<input type="search" placeholder="Localite" name="entrepriseLocalite">
    <input type="search" placeholder="Telephone" name="entrepriseTel">
    <input type="search" placeholder="Email" name="entrepriseMail">
	<button type="submit"> Enregistrer le fournisseur </button>
    
</form>
<?php
    $bdd = new PDO('mysql:host=135.125.101.237;dbname=woodytoys_db;charset=utf8', 'root', 'root');
    $rep = $bdd->query("SELECT * FROM Fournisseurs");

    while($donneesFournisseur = $rep->fetch())
					{
						echo '<div id="divFournisseur">' . $donneesFournisseur["entrepriseNom"] . " " . $donneesFournisseur["entrepriseLocalite"] . " " . $donneesFournisseur["entrepriseTel"] . " " . $donneesFournisseur["entrepriseMail"] . " </div>";
					}
					$rep->closeCursor();

	if (isset($_POST["entrepriseNom"])) {
		$requete_insertion = $bdd -> prepare('INSERT INTO Fournisseurs(entrepriseNom, entrepriseLocalite,entrepriseTel,entrepriseMail) VALUES (:entrepriseNom_param, :entrepriseLocalite_param, :entrepriseTel_param, :entrepriseMail_param)');

		$requete_insertion->execute(array(
			'entrepriseNom_param' => $_POST["entrepriseNom"],
			'entrepriseLocalite_param' => $_POST["entrepriseLocalite"],
            'entrepriseTel_param' => $_POST["entrepriseTel"],
            'entrepriseMail_param' => $_POST["entrepriseMail"]
		));
	}
?>
</body>
</html>