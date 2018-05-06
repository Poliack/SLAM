<?php
require 'vendor/autoload.php';
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;


$app= new \Slim\App;
error_reporting(E_ALL);


$app->post('/login',function (\Slim\Http\Request $request, \Slim\Http\Response $response){
    $email = $request->getQueryParam('email'); // lien ?user="
    $password = $request->getQueryParam('password');
    $bb=PostConnecter($email,$password);
    $aff = json_encode($bb,JSON_PRETTY_PRINT);
    return $aff;
});
/*$app->get('/users',function (Request $request, Response $response){
    return GetUsers();
});
$app->get('/dimitri',function (Request $request,Response $response){
    return $response->getBody()->write("C'est moi");
});
$app->get('/{login}/{mdp}', function (Request $request,Response $response){
    $login = $request->getAttribute('login');
    $password = $request->getAttribute('name');
    return Getcompte($login,$password);
});*/


function Connexion (){ // SQL DATABASE -> 'test-as'
    $pdo = new PDO ('mysql:host=localhost;dbname=test-as','root','');
    return  $pdo;
}
function PostConnecter($email,$password){
    session_start();
    try {
        $sql = "SELECT * FROM users where email = :email AND password = :password"; // vérifie le mot de passe ,  :password = a clé  , affecter par 'password' => $password
        $dbh = Connexion();
        $req = $dbh->prepare($sql);

        /*$req->bindValue(':email',$email,PDO::PARAM_STR);
        $req->bindValue(':password',$password, PDO::PARAM_STR);*/
        $tb=array(
            'email' => $email,
            'password' => $password,
        );
        $req->execute($tb);
        $res = $req->fetch();
        //console_log($res);
        return $res;
    }catch(PDOException $e){
    return '{"error":'.$e->getMessage().'}}';
}

}
function GetUsers(){
    session_start();
    $sql= 'SELECT * FROM users';
    try{
        $dbh = Connexion();
        $statement = $dbh->prepare($sql);
        $statement->execute();
        $result = $statement->fetchAll();
        return json_encode($result,JSON_PRETTY_PRINT);
    }Catch(PDOException $e){
        return 'Erreur: '.$e->getMessage();
    }
}
/*function Getcompte($login,$password){

    session_start();
    $sql='SELECT * FROM users where login = :login and password = :password';
    $PaswdHache=md5($password);
    try{
        $dbh=Connexion();
        $statement = $dbh->prepare($sql);
        $statement->bindParam(':password',$PaswdHache);
        $statement->bindParam(':login',$login);
        $statement->execute();
        $result = $statement->fetchall();
        if ($result = true){
            return "Ok";
        }else{
            return "non ok";
        }

    }Catch(PDOException $e){
        return 'Non ok '.$e->getMessage();
    }
}*/
function console_log( $data ){
    echo '<script>';
    echo 'console.log('. json_encode( $data ) .')';
    echo '</script>';
}
$app->run();
?>