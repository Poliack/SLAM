<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>tableau catalogue</title>
	</head>
	<body>
	<?php session_start();
		$dsn = 'mysql:host=sl-eu-lon-2-portal.9.dblayer.com:26249;dbname=tdcatalogue;charset=utf8';
		try { 
   	 	$dbh = new PDO($dsn,"admin","FFCMIJDYMIGYZFBP");
		} 
		catch (PDOException $e) { 
    	die('Connexion échouée : ' . $e->getMessage());
		}

    	$sql ="select * FROM collection,article where collection.NumColl=article.NumColl";
    	$resultat=$dbh->prepare($sql);
    	$resultat->execute();
    	?>
    	<table border ="width:100%">
    	<?php

    	foreach($resultat->fetchAll(PDO::FETCH_OBJ) as $ligne){
    		?>
    		
    			<tr>
    				<td><?php echo $ligne->NumColl; ?></td>
    				<td><?php echo $ligne->Datelancement; ?></td>
    				<td><?php echo $ligne->Refprod; ?></td>
    				<td><?php echo $ligne->designation; ?></td>
    				<td><?php echo $ligne->Couleur; ?></td>
    				<td><?php echo $ligne->NomColl; ?></td>
    				<td><?php echo $ligne->Dimension; ?></td>
    				<td><?php echo $ligne->Harmonie; ?></td>
    				<td><?php echo $ligne->prixht; ?></td>
    				
    			</tr>
    		
    	<?php
    	}
    	?>
    	</table>
    	<?php
    	$resultat->CloseCursor();
    	?>
    </body>
</html>
