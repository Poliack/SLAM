<?php require '../vendor/autoload.php';

$app= new \Slim\App([
    'settings'=>[
        'displayErrorDetails' => true
    ]
]);
require '../app/container.php';

$app->get('/',\App\Controllers\PageController::class .':home');
$app->get('/connexion', \App\Controllers\PageController::class.':connexion');
$app->run();