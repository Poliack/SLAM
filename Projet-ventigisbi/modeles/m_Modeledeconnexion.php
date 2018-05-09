<?php session_start(); 

session_destroy(); // detruit la connexion 
header('Location:../index.html'); // redirige vers le login

?>