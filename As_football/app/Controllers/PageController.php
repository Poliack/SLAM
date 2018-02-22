<?php
namespace App\Controllers;

use http\Env\Request;
use Psr\Http\Message\RequestInterface;
use Psr\Http\Message\ResponseInterface;

Class PageController{
    private $container;
    public function __construct($container)
    {
        $this->container=$container;
    }
    public function home(RequestInterface $request,ResponseInterface $response){
        $this->container->view->render($response,'pages/home.twig',['name'=> 'Marc']);
    }
    public function connexion(RequestInterface $request,ResponseInterface $response){
        $this->container->view->render($response,'pages/connexion.twig');
    }
}