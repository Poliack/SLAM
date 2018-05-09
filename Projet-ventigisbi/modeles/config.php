<?php
$currency = '&#8377; '; //Currency Character or code
$shipping_cost      = 1.50; //shipping cost
$taxes              = array( //List your Taxes percent here.
    'VAT' => 12,
    'Service Tax' => 5
);

function connexion()
{
    $db_username = 'admin';
    $db_password = 'FFCMIJDYMIGYZFBP';
    $db_name = 'medibase';
    $db_host = 'sl-eu-lon-2-portal.10.dblayer.com:26249';

    $dsn = "mysql:host=" . $db_host . ";dbname=" . $db_name . ";charset=utf8";
    try {
        $dbh = new PDO($dsn, $db_username, $db_password);
    } catch (PDOException $e) {
        die('Connexion échouée : ' . $e->getMessage());
    }
    return $dbh;
}
    ?>
