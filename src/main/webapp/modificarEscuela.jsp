<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.escuela_trabajo_9.models.Escuela" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

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
</body>
</html>