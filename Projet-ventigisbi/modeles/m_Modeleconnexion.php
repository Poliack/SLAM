<?php session_start(); // A mettre cette ligne en haut de chaque page pour démarrer la session
include "config.php";
if(isset($_POST['Email'])&& isset($_POST['Password'])) // Données du formulaire
{
    $Email = $_POST['Email'];
    $Password = $_POST['Password'];
    $dbh=connexion();
    $sql = "select Level from gestionutilisateur where Email='" . $Email . "'and Password='" . $Password . "'";
   // echo $sql;

    $req = $dbh->prepare($sql); // prepare la requete enregistrer dans le cache et non executé
    $req->bindParam('Email', $Email); // On precise le type de donnée
    $req->bindParam('Password', $Password);
    $req->execute(); // Execute la requete

    //creation de la variable count pour notre condition IF
    foreach ($req->fetchAll(PDO::FETCH_OBJ) as $ligne) {
        $Level = $ligne->Level;
    }
    echo $Level;

   if ($Level == 1) { // sinon c'est un  Medecin
        $_SESSION['Email'] = $Email;
        $_SESSION['Level'] = $Level; // Création de la session Affichage login
       header('Location:../vues/v_Consultation.php'); // Redirection si medecin est bien connecté
    }

    if ($Level == 2) {  //  si c'est un visiteur
        $_SESSION['Email'] = $Email;
        $_SESSION['Level'] = $Level; // Création de la session Affichage login
        header('Location:../vues/index.php');

    }

    if ($Level!=1 and $Level!=2){
       header('Location:../vues/error.html');
    }

}
// TEST OK
    // Visualisation de la table medicament pour le visiteur
?>

                            // CREATION DU PANIER 
                         