<?php require '../vendor/autoload.php';

$app= new \Slim\App([
    'settings'=>[
        'displayErrorDetails' => true
    ]
]);
require '../app/container.php';

$app->get('/test',\App\Controllers\PageController::class .':Test');
$app->get('/se-connecter', \App\Controllers\PageController::class.':GetConnexion');
$app->get('/compte',\App\Controllers\PageController::class.':GetCompte');
$app->post('/compte',\App\Controllers\PageController::class.':PostCompte')->setName('PostConnexion');
$app->run();