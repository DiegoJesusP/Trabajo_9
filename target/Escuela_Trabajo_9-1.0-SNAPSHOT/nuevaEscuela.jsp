<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar Escuela</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="assets/js/bootstrap.js">


</head>
<body>
<h1>Ingrese los  datos de la nueva escuela</h1>
<form method="get" action="/Escuela_Trabajo_9_war_exploded/CreateEscuela">
    <label>Nombre de la Escuela</label>
    <input type="text" name="nombre">
    <br>
    <label>#ID</label>
    <input type="number" name="id">
    <br>
    <label>Direccion</label>
    <input type="text" name="direccion">
    <br>
    <label>Nivel Educativo</label>
    <input type="text" name="niveleducativo">
    <br>
    <label>Total de Alumnos</label>
    <input type="number" name="totalAlumnos">
    <br>
    <input type="submit">
</form>
</body>
</html>
