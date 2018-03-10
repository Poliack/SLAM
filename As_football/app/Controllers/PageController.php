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
    /*function TEST*/
    public function test(RequestInterface $request, ResponseInterface $response){
        $sql = ('SELECT * FROM users');
        $data=$this->con($response,$sql);
        $this->render_args($response,'pages/affiche.twig',['user' => $data]);
    }
    /**
     * @param RequestInterface $request
     * @param ResponseInterface $response
     */
   /* public function home(RequestInterface $request, ResponseInterface $response){
        $this->render($response,'pages/home.twig',['name'=> 'Marc']);
    }*/
    public function connexion(RequestInterface $request,ResponseInterface $response){
     if(isset($_SESSION['Usercon'])){
         $this->render($response,'pages/compte.twig');
     }else{
         $this->render($response,'pages/connexion.twig');
     }

    }
    public function compte (ResponseInterface $request,ResponseInterface $response){

        $this->render($response,'pages/compte.twig');
    }


}