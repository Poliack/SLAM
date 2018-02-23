<?php
namespace App\Controllers;

use http\Env\Request;
use Psr\Http\Message\RequestInterface;
use Psr\Http\Message\ResponseInterface;

Class PageController extends Controller {

    public function home(RequestInterface $request,ResponseInterface $response){
        $this->render($response,'pages/home.twig',['name'=> 'Marc']);
    }
    public function connexion(RequestInterface $request,ResponseInterface $response){
        $this->render($response,'pages/connexion.twig');
    }
    public function select(RequestInterface $request, ResponseInterface $response){
        $this->query($response,'SELECT FROM * users');
        $this->render($response,'pages/affiche.twig');

    }
}