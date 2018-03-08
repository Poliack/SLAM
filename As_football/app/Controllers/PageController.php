<?php
namespace App\Controllers;

use http\Env\Request;
use Psr\Http\Message\RequestInterface;
use Psr\Http\Message\ResponseInterface;
use Slim\Http\Response;

Class PageController extends Controller {
    // FUNCTION TEST

    /**
     * @param Request $request
     * @param \http\Env\Response $response
     */
    public function test(\http\Env\Request $request, \http\Env\Response $response){
        $sql = ('SELECT * FROM users');
        $resultat=$this->con($response,$sql);
        var_dump($resultat);
        $this->render($response,'pages/affiche.twig');

        die();


    }

    /**
     * @param RequestInterface $request
     * @param ResponseInterface $response
     */
    public function home(RequestInterface $request, ResponseInterface $response){
        $this->render($response,'pages/home.twig',['name'=> 'Marc']);
    }
    public function connexion(RequestInterface $request,ResponseInterface $response){
        $this->render($response,'pages/connexion.twig');
    }
    public function compte (ResponseInterface $request,ResponseInterface $response){
        $this->render($response,'pages/compte.twig');
    }


}