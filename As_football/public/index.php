<?php require '../vendor/autoload.php';

$app= new \Slim\App([
    'settings'=>[
        'displayErrorDetails' => true
    ]
]);
require '../app/container.php';

$app->get('/test',\App\Controllers\PageController::class .':test');
$app->get('/se-connecter', \App\Controllers\PageController::class.':connexion');
$app->get('/compte',\App\Controllers\PageController::class.':connexion');
$app->run();