<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="mx.edu.utez.escuela_trabajo_9.models.Escuela" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Objects" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
    <title>Escuelas</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="assets/js/bootstrap.js">
</head>
<body>
<div class="container-fluid">
    <nav class="navbar navbar-expand-lg  bg-body-tertiary" style="background-color: #252E3B">
        <div class="container-fluid">
            <a class="navbar-brand" style="color: #ffffff"  href="#">
                <img src="assets/img/logo.png" alt="Logo School Gestor" width="70" height="25" class="d-inline-block align-text-top">
                Escuelas actuales en el sistema
            </a>
        </div>
    </nav>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h3>Nuestras Escuelas</h3>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>#ID</th>
                    <th>Nombre de la Escuela</th>
                    <th>Dirección</th>
                    <th>Nivel Educativo</th>
                    <th>Total de Alumnos</th>
                    <th>Fecha de fundacion</th>
                    <th>Total de maestros</th>
                    <th>Tipo de escuela</th>

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
                        <td>${esc.fechaDeFundacion}</td>
                        <td>${esc.totalMaestros}</td>

                        <td>${esc.status}</td>

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
</body>
</html>