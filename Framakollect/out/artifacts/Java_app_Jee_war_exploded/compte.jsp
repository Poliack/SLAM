<%--
  Created by IntelliJ IDEA.
  User: Dimitri
  Date: 05/05/2018
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
    <title>Compte</title>
    <link rel="icon" href="img/accueil.png" type="image/x-icon"/>

</head>
<body>
<div class="row">
    <div class="col-md-4 offset-4" id="center">
        <button type="button" class="btn btn-primary" id="medicament">Affichez médicament</button>
    </div>
</div>
<div class="row">
    <div class="col-lg-8 offset-lg-2">
    <table id="table-clubs" class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>Id</th>
            <th>Depôt Légal</th>
            <th>Nom Commercial</th>
            <th>Composition</th>
            <th>Effets</th>
            <th>Contre Indic</th>
            <th>Fam Code</th>
        </tr>
        </thead>
        <tbody id="tab-medicament">
        </tbody>
    </table>
</div>
</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script>
    $(document).ready(function(){
        $('#medicament').click(function () {
            $.ajax({
                type: "POST",
                contentType: 'application/json; charset=utf-8',
                url:"/E4/framakollect/medicament",
                success: function (data){
                    console.log(data);
                    Success = true
                    for (var i=0;i<data.length;i++){
                        $('#tab-medicament').append('<tr><td id="medId">'+data[i].medId+'</td><td>'+data[i].depotLegal+'</td><td>'+data[i].nomCommercial+'</td><td>'+data[i].composition+'</td><td>'+data[i].effet+'</td><td>'+data[i].contreIndic+'</td><td>'+data[i].famCode+'<br><br><a type="submit" href="info/E4" class="btn btn-primary">Info</a></td></tr>')
                    }
                },
                error: function (data) {
                    alert("error");
                    alert("data");
                    console.log(data);
                    Success = false;
                    Location.href="error.html";

                }
            });
        });
    });


</script>

</body>
</html>
