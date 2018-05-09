function login
(){
	var login = document.getElementById("Email");
	if(login.value.length!="@"){
		login.className="incorrect";
		alert("Non valide veuillez saisir un vrai mail");
	}


}
function mdp(){
	var mdp = document.getElementById("Password");
	if(login.value.length<4){
		login.className="incorrect";
		alert("votre mot de passe doit contenir 4 caractères minimum");
	}
}
function resultat(){
	login();
	mdp();

}