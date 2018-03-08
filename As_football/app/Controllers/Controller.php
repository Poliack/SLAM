<?php
namespace App\Controllers;

use http\Env\Request;
use http\Env\Response;
use Psr\Http\Message\RequestInterface;
use Psr\Http\Message\ResponseInterface;
class Controller
{
    private $container;
    public function __construct($container)
    {
        $this->container=$container;
    }

    public function render (ResponseInterface $response, $file)
    {
        $this->container->view->render($response,$file);

    }
    public function con(Response $response,$sql)
    {
        $req = $this->container->pdo->prepare($sql);
        $req->execute();
        return $req->fetchall();
    }

}