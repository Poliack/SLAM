<DOCTYPE HTML!>
    <html>
    <head>
        <meta charset="utf-8">
        <link href="../app/views/pages/css/bootstrap.min.css" rel="stylesheet">
        <link href="../app/views/pages/css/styles.css" rel="stylesheet">
        <title>Accueil</title>
    </head>
    <body>
    <script src="../app/views/pages/js/home.js"></script>
    <div class="container">
        <div class="card card-container">
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="email" id="inputEmail" class="form-control" placeholder="Email" required autofocus>
                <input type="password" id="inputPassword" class="form-control" placeholder="Mot de passe" required>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Connectez-vous</button>
            </form>
            <a href="#" class="forgot-password">
                Mot de passe oublié ?
            </a>
        </div>
    </div>
    </body>
    </html>