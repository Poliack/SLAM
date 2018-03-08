<?php
$container = $app->getContainer();

// Register component on container
$container['view'] = function ($container) {
    $dir = dirname(__DIR__);
    $view = new \Slim\Views\Twig($dir .'/app/views',[
        'cache' => false //$dir . '/tmp/cache'
    ]);

    // Instantiate and add Slim specific extension
    $basePath = rtrim(str_ireplace('index.php', '', $container['request']->getUri()->getBasePath()), '/');
    $view->addExtension(new Slim\Views\TwigExtension($container['router'], $basePath));

    return $view;
};
/*$container['pdo']= function ($container){
    $pdo=new PDO('mysql:dbname=test-as;host=localhost:3306','root','');
    echo "lol";
    return $pdo;

};*/
$container['pdo'] = function ($container) {
    $pdo = new PDO ('mysql:host=localhost;dbname=test-as;charset=utf-8','root','');
    return $pdo;


};
