<%-- 
    Document   : datosTenista
    Created on : 18 feb. 2021, 13:07:28
    Author     : se_da
--%>
<%@page import="java.util.HashMap" %>
<%@page import="Modelo.Tenista" %>
<%@page import="Modelo.SignoZodiaco" %>
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
        <title>Datos del tenista</title>
    </head>
    <body>
        <%! Tenista tennis; %> <!-- Variable que se utiliza fuera del flujo de la página, por lo tanto esta fuera de la zona principal -->
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
        
        <jsp:useBean id="signo" class="Modelo.SignoZodiaco" />
        <%
            HashMap datos = (HashMap) session.getAttribute("datos");
            if(datos != null){
                String nombre = request.getParameter("nombre");
                
                tennis = (Tenista) datos.get(nombre);
                signo.setCumpleaños(tennis.getFechaNac());
            }
        %>
        
        <section>
            <div class="card bg-light">
                <article class="card-body mx-auto" style="max-width: 400px;">
                    <form>
                        <h2 class="text-center py-4 font-bold font-up danger-text">Datos del tenista</h2>
                        <!-- Nombre -->
                        <div class="form-group input-group">
                            <div class="form-group input-group text-center">
                                <span class="input-group-text text-center"> <label>Nombre</label> </span>
                            </div>
                            <input name="" class="form-control text-center" placeholder="Nombre" type="text" value="<%= tennis.getNombre()%>">
                        </div>
                        <!-- Apellido -->
                        <div class="form-group input-group">
                            <div class="form-group input-group text-center">
                                <span class="input-group-text text-center"> <label>Apellido</label> </span>
                            </div>
                            <input name="" class="form-control text-center" placeholder="Apellido" type="text" value="<%= tennis.getApellido()%>">
                        </div> 
                        <!-- Puntos ATP -->
                        <div class="form-group input-group">
                            <div class="form-group input-group text-center">
                                <span class="input-group-text text-center"> <label>Puntos ATP</label> </span>
                            </div>
                            <input name="" class="form-control text-center" placeholder="Puntos" type="text" value="<%= tennis.getPuntos()%>">
                        </div> 
                        <!-- Edad -->
                        <div class="form-group input-group">
                            <div class="form-group input-group text-center">
                                <span class="input-group-text text-center"> <label>Edad</label> </span>
                            </div>
                            <input name="" class="form-control text-center" placeholder="Edad" type="text" value="<%= signo.getEdadC()%>">
                        </div> 
                        <!-- Signo zodiacal -->
                        <div class="form-group input-group">
                            <div class="form-group input-group text-center">
                                <span class="input-group-text text-center"> <label>Signo zodiacal</label> </span>
                            </div>
                            <input name="" class="form-control text-center" placeholder="Signo" type="text" value="<%= signo.getSignoZodiaco()%>">
                        </div>
                    </form>
                </article>
            </div>
        </section>
    </body>
</html>
