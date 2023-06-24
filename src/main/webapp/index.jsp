
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="mx.edu.utez.escuela_trabajo_9.models.Escuela" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Objects" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Escuelas</h1>
        </div>
        <div class="col-md-6">
            <!--Es una columna de 6 espacios -->
            //<img class="img-fliud" src="assets/img/1.jpg" alt="imagenQuePonganLosdeFront">
        </div>
        <div class="col-md-6">
            <p>Las Siguientes escuelas son escuelas, no se que poner aqui</p>
        </div>
        <div class="col-md-12">
            <h3>Nuestras Escuelas</h3>
            <table class="table-bordered">
                <thead>
                <tr>
                    <th>#ID</th>
                    <th>Nombre</th>
                    <th>Dirección</th>

                </tr>
                </thead>

                <tbody>

                <c:forEach items="${escuelas}" var="esc">
                    <tr>
                        <td>${esc.id}</td>
                        <td>${esc.nombre}</td>
                        <td>${esc.direccion}</td>
                        <td><a href="modificarEscuela.jsp?id=${esc.id}">Modificar</a></td>
                        <td><a href="/Escuela_Trabajo_9_war_exploded/DeleteEscuela?id=${esc.id}">Borrar</a></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
            <a href="nuevaEscuela.jsp">Agregar Escuela Nueva</a>
        </div>
    </div>
</div>
<h1><%= "Escuela Patitas" %>
</h1>
<br/>
<button onclick="window.location.href='/Escuela_Trabajo_9_war_exploded/hello-servlet'">Hello Servlet</button>
<a href="/Escuela_Trabajo_9_war_exploded/hello-servlet">Hello Servlet</a>
</body>
</html>