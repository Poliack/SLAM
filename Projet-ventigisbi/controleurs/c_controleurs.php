<?php session_start();
if(isset($_REQUEST['maVar'])){
 	$maVar = $_REQUEST['maVar'];
 	switch($maVar){
 		case "maPage2":
 		require_once '../modeles/m_modele.php';
 				//insertion d'une liste de fonctions de m_monModele
 			$client=getclient();
 			//valorisation de la variable $mesClients grâce à une fonction
 			require_once '../vues/v_client.php';
 			//utilisation de $mesClients dans la vue
 			break;

 			default:
 			require_once '../vue/v_accueil.php';
 			break;
 	 	}
 	
		 
 	}else{
		require_once '../vue/v_accueil.php';
	 }