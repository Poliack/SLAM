<?php
namespace App\Controllers;

use http\Env\Request;
use Psr\Http\Message\RequestInterface;
use Psr\Http\Message\ResponseInterface;

Class PageController extends Controller {
    // FUNCTION TEST
    public function TEST(RequestInterface $request, ResponseInterface $response){
        $this->query($response,'Select from * users');
        $this->render($response,'pages/affiche.twig');

    }

    public function home(RequestInterface $request,ResponseInterface $response){
        $this->render($response,'pages/home.twig',['name'=> 'Marc']);
    }
    public function connexion(RequestInterface $request,ResponseInterface $response){
        $this->render($response,'pages/connexion.twig');
    }
    public function compte (ResponseInterface $request,ResponseInterface $response){
        $this->render($response,'pages/compte.twig');
    }


}