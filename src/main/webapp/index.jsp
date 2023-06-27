<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
    <title>School Gestor | Inicio</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="assets/js/bootstrap.js">
    <link rel="stylesheet" href="assets/css/fondo.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/inicio.css">
</head>
<body>

<div class="area" >
    <ul class="circles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
</div >

<header class="header sticky-top">
    <div class="logo">
        <a href="index.jsp">
            <img src="assets/img/logo_blanco.png" alt="Logo de la marca">
        </a>
    </div>
    <a class="btn" href="nuevaEscuela.jsp"><button>Agregar Escuela</button></a>
    <a onclick="openNav()" class="menu" href="#"><button>Menu</button></a>

    <div id="mobile-menu" class="overlay">
        <a onclick="closeNav()" href="" class="close">&times;</a>
        <div class="overlay-content">
            <a href="index.jsp">Inicio</a>
            <a href="nuevaEscuela.jsp">Agregar</a>
        </div>
    </div>
</header>

<section id="ver tabla">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="card-subtitle" style="color: white">Nuestras Escuelas</h3>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                        <tr class="tabla">
                            <th>#ID</th>
                            <th>Nombre de la Escuela</th>
                            <th>Dirección</th>
                            <th>Nivel Educativo</th>
                            <th>Fecha de Fundación</th>
                            <th>Alumno</th>
                            <th>Maestros</th>
                            <th>Modificar</th>
                            <th>Eliminar</th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach items="${escuelas}" var="esc">
                            <tr>
                                <td>${esc.id}</td>
                                <td>${esc.nombre}</td>
                                <td>${esc.direccion}</td>
                                <td>${esc.niveleducativo}</td>
                                <td>${esc.fechaDeFundacion}</td>
                                <td>${esc.totalAlumnos}</td>
                                <td>${esc.totalMaestros}</td>
                                <td><a href="modificarEscuela.jsp?id=${esc.id}" class="btn btn-primary">Modificar</a></td>
                                <td><a href="/Escuela_Trabajo_9_war_exploded/DeleteEscuela?id=${esc.id}" class="btn btn-danger">Eliminar</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="mostrar">
                        <a class="btn" href="/Escuela_Trabajo_9_war_exploded/hello-servlet"><button>Ver Escuelas</button></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="container-fluid">
    <div class="row">
        <h1>¿CÓMO FUNCIONA?</h1>
        <p class="col-md-12">
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
    </div>
</div>

<footer class="footer">
    <h3>Contáctanos:</h3>
    <p>Si tienes alguna duda o sugerencia, no dudes en contactarnos. <br>Correo: schoolgestor@gmail.com</p>
</footer>
<script src="assets/js/nav.js"></script>
</body>
</html>