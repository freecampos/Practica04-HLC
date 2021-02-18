<%@page import="Modelo.Tenista"%>
<%@page import="java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
	<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

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
        <title>Inicio</title>
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
        
        <!-- Texto central -->
        <header class="texto-principal">
            <div class="description">
                <h1 id="titulo">Daniel Campos Sánchez - Práctica <span class="typed"></span></h1>
                <p>
                Página web con HTML, CSS, y JSP.
                Página sobre el ranking de tenistas actual del mundo.
                En el listado mostrará el Ranking ATP de los jugadores
                con sus datos principales.
                </p>
            </div>
        </header>
    </body>
    
    <% 
            //Si hay una sesion iniciada, cogemos los datos.
            HashMap data = (HashMap) session.getAttribute("datos");

            if (data != null) {
                for (Object value : data.values()) {
                    Tenista tenis = (Tenista) value;
                    System.out.println("\n" + tenis.getNombre());
                }
            } else { 
                //Si no existen los tenistas, los creamos, poruqe no se ha iniciado sesion aun.
                HashMap <String, Tenista> tennis = new HashMap<String, Tenista>();

                Tenista tennis1 = new Tenista("Novak", "Djokovic", 12030, "1987-05-22");
                Tenista tennis2 = new Tenista("Rafael", "Nadal", 9850, "1986-06-03");
                Tenista tennis3 = new Tenista("Dominic", "Thiem", 9125, "1993-09-03");
                Tenista tennis4 = new Tenista("Daniil", "Medvedev", 8715, "1996-02-11");
                Tenista tennis5 = new Tenista("Roger", "Federer", 6630, "1981-08-08");

                //HashMap de los tenistas
                tennis.put(tennis1.getNombre(), tennis1);
                tennis.put(tennis2.getNombre(), tennis2);
                tennis.put(tennis3.getNombre(), tennis3);
                tennis.put(tennis4.getNombre(), tennis4);
                tennis.put(tennis5.getNombre(), tennis5);

                //Establecemos la sesion con los datos.
                session.setAttribute("datos", tennis);
            }

        %>
        <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>
        <script src="js/main.js"></script>
</html>
