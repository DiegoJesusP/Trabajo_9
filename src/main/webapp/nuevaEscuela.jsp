<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Ingrese datos del Animal/Escuela</h1>
<form method="get" action="/Escuela_Trabajo_9_war_exploded/CreateEscuela">
    <label>Nombre:</label>
    <input type="text" name="nombre">
    <br>
    <label>ID:</label>
    <input type="number" name="id">
    <br>
    <label>Direccion:</label>
    <input type="text" name="direccion">
    <br>
    <label>Nivel Educativo:</label>
    <input type="text" name="niveleducativo">
    <br>
    <label>Total de Alumnos:</label>
    <input type="number" name="totalAlumnos">
    <br>
    <input type="submit">
</form>
</body>
</html>
