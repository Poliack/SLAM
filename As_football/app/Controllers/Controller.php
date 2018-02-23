<?php
namespace App\Controllers;

use http\Env\Request;
use Psr\Http\Message\RequestInterface;
use Psr\Http\Message\ResponseInterface;
class Controller
{
    private $container;
    public function __construct($container)
    {
        $this->container=$container;
    }

    public function render (ResponseInterface $response, $file){
        $this->container->view->render($response,$file);

    }
    public function query($sql)
    {
        $req = $this->container->pdo->prepare($sql);
        $req->execute();
        $req->fetchAll();
        return var_dump($req);
    }
}