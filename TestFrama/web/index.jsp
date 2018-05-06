<%--
  Created by IntelliJ IDEA.
  User: Dimitri
  Date: 21/11/2017
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Accueil</title>
    <meta charset="utf-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
    <title>Accueil</title>
    <link rel="icon" href="img/accueil.png" type="image/x-icon"/>
  </head>
  <body>
  <div class="container">
    <div class="text-center">
      <h1 class="title">FRAMAKOLLECT</h1>
    </div>
    <div class="card card-container">
      <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
      <p id="profile-name" class="profile-name-card"></p>
      <span id="reauth-email" class="reauth-email"></span>
      <input type="text" id="email" name="email" class="form-control" placeholder="Email" required autofocus>
      <input type="password" id="password" name="password" class="form-control" placeholder="Mot de passe" required>
      <div id="remember" class="checkbox">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit" id="connexion">Connectez-vous</button>

      <a href="forget-password.html" class="forgot-password">
        Mot de passe oublié ?
      </a>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script>
            $(document).ready(function(){
                $('#connexion').click(function () {
                    var Success = false;
                    var user=$("#email").val();
                    var password=$("#password").val();
                    alert(user);
                    alert(password);
                    $.ajax({
                        type: "POST",
                        contentType: 'application/json; charset=utf-8',
                        url: "/E4/framakollect/compte?email=+"+user+"&password="+password, //?user="+user +"&password="+password
                        success: function (data){
                            alert("success");
                            console.log(data);
                            var result=JSON.stringify(data); // convertie l'objet en caractère
                            if(result=="null"){
                                alert(result);
                                Location.href="index.jsp"
                            }else {
                                Success = true
                                location.href = "compte.jsp?email="+user; // renvoie la page  en question
                            }
                        },
                        error: function (data) {
                            alert("error");
                            console.log(data);
                            Success = false;
                            Location.href="error.html";

                        }
                    });
                });
            });
        </script>
    </div>
  </div>

  </body>
</html>
