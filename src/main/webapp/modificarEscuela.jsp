<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.escuela_trabajo_9.models.Escuela" %>
<html>
<head>
    <title>Modificar Escuela</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="assets/js/bootstrap.js">
    <style>
        body {
            background: #0c192c;
        }

        .background-animation {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }

        .bubbles {
            position: absolute;
            width: 100%;
            height: 100%;
            display: flex;
            align-items: flex-start;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .bubbles span {
            position: relative;
            width: 30px;
            height: 30px;
            background: #4fc3dc;
            margin: 0 4px;
            border-radius: 50%;
            box-shadow: 0 0 0 10px #4fc3dc44,
            0 0 50px #4fc3dc,
            0 0 100px #4fc3dc;

            animation: animate 15s linear infinite;
            animation-duration: calc(125s / var(--1));
        }

        .bubbles span:nth-child(even) {
            background: #E8EAED  ;
            box-shadow: 0 0 0 10px #E8EAED44,
            0 0 50px #E8EAED  ,
            0 0 100px #E8EAED  ;
        }

        @keyframes animate {
            0% {
                transform: translateY(100vh) scale(0);
            }
            100% {
                transform: translateY(-10vh) scale(1);
            }
        }

        * {
            margin-right: 20px;
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Nunito', sans-serif;
            font-size: 25px;
        }

        .header {
            background-color: rgb(255, 255, 255);
            display: flex;
            justify-content: flex-end;
            align-items: center;
            height: 85px;
            padding: 5px 10%;
        }

        .header .logo {
            cursor: pointer;
            margin-right: auto;
        }

        .header .logo img {
            height: 70px;
            width: auto;
            transition: all 0.3s;
        }

        .header .logo img:hover {
            transform: scale(1.2);
        }

        .header .nav-links {
            list-style: none;
        }

        .header .nav-links li {
            display: inline-block;
            padding: 0 20px;
        }

        .header .nav-links li:hover,
            /**/
        .overlay a:hover {
            transform: scale(1.1);
        }

        .header .nav-links a {
            font-size: 25px;
            color: #000000;
        }

        .header .nav-links a:hover {
            color: #0c192c;
        }

        /**/
        .menu {
            display: none;
        }

        .header .btn button,
            /**/
        .header .menu button {
            margin-left: 20px;
            font-weight: 700;
            color: #ffffff;
            padding: 9px 25px;
            background: #0c192c;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.3s ease 0s;
        }

        .header .btn button:hover,
            /**/
        .header .menu button:hover {
            background-color: #0c192c;
            color: #437efc;
            transform: scale(1.1);
        }


        /**/
        @media screen and (max-width: 800px) {

            .nav-links,
            .btn {
                display: none;
            }

            .menu {
                display: inherit;
            }
        }


        .header a {
            text-decoration: none;
        }

        .header .overlay {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            background-color: rgba(33, 49, 63, .95);
            overflow: hidden;
            transition: all 0.3s ease 0s;
        }

        .header .overlay .overlay-content {
            display: flex;
            height: 100%;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .header .overlay a {
            padding: 15px;
            font-size: 36px;
            display: block;
            transition: all 0.3s ease 0s;
            font-weight: 700;
            color: #ffffff;
        }

        .header .overlay a:hover,
        .header .overlay a:focus {
            color: #437efc;
        }

        .header .overlay .close {
            position: absolute;
            top: 20px;
            right: 45px;
            font-size: 65px;
        }

        @media screen and (max-height:450px) {
            .header .overlay a {
                font-size: 20px;
            }

            .header .overlay .close {
                font-size: 40px;
                top: 15px;
                right: 35px;
            }
        }

        .container-fluid {
            background-color: white;
            border-radius: 20px;
            padding: 10px;
            margin: 5%;
            max-width: 100%;
            overflow-x: hidden;
            width: 90%;
        }

        .container-fluid p {
            font-size: 20px;
            text-align: justify;
            width: 55%;
            margin: 1.5%;
        }

        .container-fluid h1 {
            font-size: 40px;
            margin-top: 20px;
            margin-left: 80px;
            font-weight: bold;
        }

        .container-fluid img{
            width: 38%;
            height: 38%;
            margin-left: 40px;
        }
    </style>
</head>
<body>
<div class="background-animation">
    <div class="bubbles">
        <span style="--1: 11"></span>
        <span style="--1: 12"></span>
        <span style="--1: 24"></span>
        <span style="--1: 10"></span>
        <span style="--1: 14"></span>
        <span style="--1: 23"></span>
        <span style="--1: 18"></span>
        <span style="--1: 16"></span>
        <span style="--1: 19"></span>
        <span style="--1: 20"></span>
        <span style="--1: 22"></span>
        <span style="--1: 25"></span>
        <span style="--1: 18"></span>
        <span style="--1: 21"></span>
        <span style="--1: 15"></span>
        <span style="--1: 13"></span>
        <span style="--1: 26"></span>
        <span style="--1: 17"></span>
        <span style="--1: 13"></span>
        <span style="--1: 28"></span>
    </div>
</div>
<header class="header">
    <div class="logo">
        <img src="assets/img/LOGO_PAGINA.png" alt="Logo de la marca">
    </div>
    <nav>
        <ul class="nav-links">
            <li><b><a href="index.jsp">Inicio</a></b></li>
            <li><b><a href="nuevaEscuela.jsp">Agregar</a></b></li>
        </ul>
    </nav>
    <a class="btn" href="#"><button>Acceder</button></a>

    <a onclick="openNav()" class="menu" href="#"><button>Menu</button></a>

    <div id="mobile-menu" class="overlay">
        <a onclick="closeNav()" href="" class="close">&times;</a>
        <div class="overlay-content">
            <a href="index.jsp">Inicio</a>
            <a href="nuevaEscuela.jsp">Agregar</a>
            <a href="#">Acceder</a>
        </div>
    </div>
</header>

<h1>Modifique los nuevos datos de la escuela</h1>
<%
    List<Escuela> escuelas = (ArrayList)
            request.getSession().getAttribute("escuelas");
    int id = Integer.parseInt(request.getParameter("id"));
    Escuela escuelaVacia = new Escuela();
    for (Escuela a : escuelas) {
        if (a.getId() == id) {
            escuelaVacia = a;
        }
    }
%>
<form method="get" action="/Escuela_Trabajo_9_war_exploded/UpdateEscuela">
    <label>Nombre</label>
    <input type="text" name="nombre" value="<%= escuelaVacia.getNombre()%>">
    <br>
    <label>ID</label>
    <input type="number" name="id" value="<%= escuelaVacia.getId()%>">
    <br>
    <label>Direccion</label>
    <input type="text" name="direccion" value="<%= escuelaVacia.getDireccion()%>">
    <br>
    <label>Nivel Educativo</label>
    <input type="text" name="niveleducativo" value="<%= escuelaVacia.getNiveleducativo()%>">
    <br>
    <label>Total de alumnos</label>
    <input type="number" name="totalAlumnos" value="<%= escuelaVacia.getTotalAlumnos()%>">
    <br>
    <input type="submit" value="MODIFICAR">
</form>

<script>
    function openNav() {
        document.getElementById("mobile-menu").style.width = "100%";
    }

    function closeNav() {
        document.getElementById("mobile-menu").style.width = "0%";
    }
</script>
</body>
</html>