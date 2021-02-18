<%-- 
    Document   : listado
    Created on : 15 feb. 2021, 19:53:06
    Author     : se_da
--%>

<%@page import="java.util.HashMap" %>
<%@page import="Modelo.Tenista" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
	<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="../images/house-fill.svg" />

	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.6.0/umd/popper.min.js" integrity="sha512-BmM0/BQlqh02wuK5Gz9yrbe7VyIVwOzD1o40yi1IsTjriX/NGF37NyXHfmFzIlMmoSIBXgqDiG1VNU6kB5dBbA==" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.bundle.min.js"></script>

	<!-- Mi CSS -->
	<link rel="stylesheet" type="text/css" href="css/styles.css">
        <title>Ranking ATP</title>
    </head>
    <body>
        <!-- Menú -->
        <nav class="navbar navbar-dark bg-primary">
            <a class="navbar-brand" href="index.jsp">
                <img class="logotipo" src="images/icon.png" alt="Logo">
            Inicio</a>
            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse collapse" id="navbarsExample01" style="">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link d-flex align-items-center" routerLink="/backoffice/jobs" routerLinkActive="active" href="listado.jsp">
                        <img src="images/trophy-fill.svg" class="iconos" alt="Listado">
                            <h3 class="my-0">Ranking ATP</h3>
                    </a>
                    <div class="linea"></div>
                </li>
            </div>
        </nav>
        
        <article>     
            <div class="container py-5">
                <div class="row">
                 <%
                     HashMap datos = (HashMap) session.getAttribute("datos");
                     
                     if(datos != null){
                        for(Object value : datos.values()){
                            Tenista tennis = (Tenista) value;
                            String url = "datosTenista.jsp?codigo=" + tennis.getCodigo();
                 %>    
                             <!-- Jugador -->
                             <div class="col-md-2">
                                 <div class="card text-center">
                                     <div class="card-block">
                                         <img class="preview-img" src="http://simpleicon.com/wp-content/uploads/account.png" alt="Preview Image" width="100" height="100"/>
                                         <p><%= tennis.getNombre()%></p>
                                         <p><%= tennis.getApellido()%></p>
                                         <p><%= tennis.getPuntos()%></p>
                                         <p><%= tennis.getFechaNac()%></p>
                                         <a href="<%=url%>">Mostrar Inform.</a>
                                     </div>  
                                 </div>                                 
                             </div>                             
                         
                 <%
                        }
                    }
                 %>    
                </div>
            </div>
        </article>
    </body>
</html>