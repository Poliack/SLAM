<?php
ini_set( 'display_errors', 1 );
error_reporting( E_ALL );

if (isset($_POST['user'])&&($_POST['email'])){
    $email=strip_tags(htmlspecialchars($_POST["email"]));
    $user=strip_tags(htmlspecialchars($_POST["user"]));

    $to='mr.mitrovic.p@gmail.com';
    $subject='Mot de passe oublié de '.$user;

    $txt='Demande de réinitialisation de mot de passe de '.$user.' ('.$email.')';
    $headers="As Football";

    mail($to,$subject,$txt,$headers);
    header('Location: index.html');
}else{
    header('Location: error.html');
    exit();
}
// Test serveurs  SMTP envoie de mail Ok
?>