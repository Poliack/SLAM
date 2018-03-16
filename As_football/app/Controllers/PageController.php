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
    public function Test(RequestInterface $request, ResponseInterface $response){
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
    public function GetConnexion(RequestInterface $request,ResponseInterface $response)
    {
        if (isset($_SESSION['Usercon'])) {
            $this->render($response, 'pages/compte.twig');
        } else {
            $this->render($response, 'pages/connexion.twig');
        }
    }
    public function GetCompte (RequestInterface $request,ResponseInterface $response)
    {
        $this->render($response,'pages/compte.twig');
    }
    public function PostCompte (RequestInterface $request , ResponseInterface $response){
        session_start();
        try{
            if (isset($_POST['email'])&&($_POST['password'])) {
                $paswdbase = $_POST['password'];
                $email = $_POST['email'];
                $paswd = md5($paswdbase);
                $sql = 'SELECT * FROM users where password = :password and email = :email '; // vérifie le mot de passe
                $data = $this->con($response, $sql);
                $tb = array(
                    'password' => $paswd,
                    'email' => $email
                );

                $data->execute($tb);
                $result = $data->rowCount();

                if ($result == 1) {
                    $emailInfo = $data->fetchall();
                    $data->execute($tb);
                    $infous=$data->fetch();
                    $_SESSION['email'] = $infous['email'];
                    $this->render_args($response, 'pages/compte.twig',['user' => $emailInfo]);
                }else{
                  $message="message d'erreur";
                  $this->render_args($response, 'pages/connexion.twig', ['erreur' => $message]);
;                }
            }
        }catch (Exception $e){
            echo 'Message: '.$e->getMessage();

        }
    }

}