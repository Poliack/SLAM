<?php session_start();
include "../modeles/config.php";
if(isset($_POST['Email'])) // je vérifie le si l'email existe via au modeleconnexion
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
        <link rel="stylesheet" href="../styles/bootstrap.min.css"/>
        <link rel="stylesheet" href="../styles/styles.css"/>
        <link rel="icon" type="image/png" href="../images/hospital.png" />

		<title>Espace Médecin</title>
	</head>

	<body>
    <h1 class="text-center">Espace Médecin </h1>
    <form class="formulaire" method="post" id="frmConnection" action="../modeles/m_Modeledeconnexion.php">
        <h3> <?php echo ($_SESSION['Email']); ?></h3><div class="text-right"><button type="submit" class="btn btn-primary">Déconnexion</button></div></br>
    </form><!-- Affichage via au modeleconnexion de Email -->
   <?php
    $dbh=connexion();
    $sql='select * from medicament;';
    $req=$dbh->prepare($sql);
    $req->execute();
    ?>

    	<table class=" table table-bordered">
            <td>Référence</td>
            <td>Médicament</td>
            <td>Quantité</td>
            <td>Prix</td>
    	<?php
    	while($ligne=$req->fetchObject()){
    	?>
    			<tr>
                    <td><?php echo $ligne->Reference;?></td>
    				<td><?php echo $ligne->Libelle;?></td>
                    <td><?php echo $ligne->Quantite;?></td>
    				<td><?php echo $ligne->Prix;?></td>
    			</tr>
    			<?php
    	}
    	?>
    	</table>
    	<?php $req->CloseCursor();?>
	</body>
</html>