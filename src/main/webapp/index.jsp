<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="mx.edu.utez.escuela_trabajo_9.models.Escuela" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Objects" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
    <title>Inicio</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="assets/js/bootstrap.js">
    <link rel="stylesheet" href="assets/css/fondo.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/inicio.css">
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

<div class="container-fluid">
    <div class="row">
        <h1>¿QUÉ ES SCHOOL GESTOR?</h1>
        <p class="col-md-8">
            School Gestor es un sistema de gestión diseñado para administrar de manera eficiente y organizada las
            escuelas. Proporciona una plataforma centralizada donde se pueden almacenar y gestionar datos
            importantes relacionados con las escuelas, como información, ubicación, niveles educativos, número de
            alumnos y más. Con School Gestor, los usuarios pueden realizar diversas tareas de gestión, como agregar nuevas
            escuelas, modificar los detalles existentes, eliminar registros obsoletos y buscar información
            específica de una escuela en particular. Además, el sistema permite generar informes y estadísticas para
            tener una visión clara y detallada del panorama educativo. Este sistema proporciona una interfaz intuitiva y fácil de usar, lo que facilita la navegación y el
            acceso a la información relevante. Al optimizar los procesos de gestión, School Gestor ayuda a agilizar
            las operaciones administrativas y a mejorar la eficiencia en el manejo de los datos escolares.
            <br><br>
            En resumen, School Gestor es una herramienta poderosa y completa para la gestión de escuelas, que
            permite a los usuarios administrar de manera efectiva la información clave, optimizar los procesos
            administrativos y tener un mayor control sobre las operaciones educativas.
        </p>
        <img class="img-fluid col-md-4" src="assets/img/Imagen_1.png" alt="Imagen de una universidad">
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h3>Nuestras Escuelas</h3>
            <table class="table-bordered">
                <thead>
                <tr>
                    <th>#ID</th>
                    <th>Nombre de la Escuela</th>
                    <th>Dirección</th>
                    <th>Nivel Educativo</th>
                    <th>Total de Alumnos</th>
                </tr>
                </thead>

                <tbody>

                <c:forEach items="${escuelas}" var="esc">
                    <tr>
                        <td>${esc.id}</td>
                        <td>${esc.nombre}</td>
                        <td>${esc.direccion}</td>
                        <td>${esc.niveleducativo}</td>
                        <td>${esc.totalAlumnos}</td>
                        <td><a href="modificarEscuela.jsp?id=${esc.id}">Modificar</a></td>
                        <td><a href="/Escuela_Trabajo_9_war_exploded/DeleteEscuela?id=${esc.id}">Eliminar</a></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
            <a href="nuevaEscuela.jsp">Agregar Escuela Nueva</a>
            <br/>
            <button onclick="window.location.href='/Escuela_Trabajo_9_war_exploded/hello-servlet'">Hello Servlet</button>
        </div>
    </div>
</div>
<script src="assets/js/nav.js"></script>
</body>
</html>