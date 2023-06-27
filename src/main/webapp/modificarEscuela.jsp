<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.escuela_trabajo_9.models.Escuela" %>
<html>
<head>
    <title>School Gestor | Modificar Escuelas</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="assets/js/bootstrap.js">
    <link rel="stylesheet" href="assets/css/fondo.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/inicio.css">
    <link rel="stylesheet" href="assets/css/estilosform.css">
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
    request.getSession().setAttribute("escuelas", escuelas);
%>

<!-- FORMULARIO -->
<div class="container">
    <h1>Actualizar Escuela</h1>
    <form action="/Escuela_Trabajo_9_war_exploded/UpdateEscuela" method="get" class="formulario">
      <div class="form-group">
        <label for="id">ID:</label>
        <input
          type="number"
          class="form-control"
          id="id"
          name="id"
          min="1"
          value="<%= escuelaVacia.getId()%>"
          placeholder="Ingresa el ID:"
        />
      </div>
      <br />
      <label for="nombre">Nombre:</label>

      <div class="form-group">
        <input
          type="text"
          class="form-control"
          id="nombre"
          name="nombre"
          value="<%= escuelaVacia.getNombre()%>"
          placeholder="Ingresa el Nombre:"
        />
      </div>
      <br />
      <div class="form-group">
        <label for="direccion">Dirección:</label>
        <input
          type="text"
          class="form-control"
          id="direccion"
          name="direccion"
            value="<%= escuelaVacia.getDireccion()%>"
          placeholder="Ingresa la Dirección:"
        />
      </div>
      <br />
      <div class="select-form">
        <div class="form-group">
          <label for="niveleducativo">Nivel educativo:</label><br />
          <select id="niveleducativo" name="niveleducativo">
            <option value="<%=escuelaVacia.getNiveleducativo()%>" hidden class="option1">
              Selecciona un nivel educativo:
            </option>
            <option value="inicial">Inicial</option>
            <option value="prescolar">Prescolar</option>
            <option value="primaria">Primaria</option>
            <option value="secundaria">Secundaria</option>
            <option value="mediaSuperior">Media Superior</option>
            <option value="superior">Superior</option>
          </select>
        </div>
      </div>
      <div class="form-group">
        <label for="fechaDeFundacion">Fecha de Fundación:</label>
        <input
          type="date"
          class="form-control"
          id="fechaDeFundacion"
          name="fechaDeFundacion"
            value="<%= escuelaVacia.getFechaDeFundacion() %>"
          placeholder="Ingresa la Fecha de Fundación:"
        />
      </div>
      <br />
      <div class="form-group">
        <label for="totalAlumnos">Número de Alumnos:</label>
        <input
          type="number"
          class="form-control"
          id="totalAlumnos"
          name="totalAlumnos"
          min="1"
            value="<%= escuelaVacia.getTotalAlumnos() %>"
          placeholder="Ingresa el Número de Alumnos:"
        />
      </div>
      <br />
      <div class="form-group">
        <label for="totalMaestros">Número de Maestros:</label>
        <input
          type="number"
          class="form-control"
          id="totalMaestros"
          name="totalMaestros"
          min="1"
            value="<%= escuelaVacia.getTotalMaestros() %>"
          placeholder="Ingresa el Número de Maestros:"
        />
      </div>
      <br />
      <div class="radio-form">
        <div class="form-group">
          <div>
            <div class="radio-container">
              <label class="radio">Escuela Pública: </label>&nbsp;&nbsp;
              <input
                type="radio"
                name="tipoEscuela"
                value="publica"
              />
            </div>
            <div class="radio-container">
              <label class="radio">Escuela Privada: </label>&nbsp;&nbsp;
              <input type="radio" name="tipoEscuela" value="privada" />
            </div>
          </div>
        </div>
      </div>
      <div class="btn-center">
        <input type="submit" value="Actualizar" />
      </div>
    </form>
  </div>
<!-- FIN FORMULARIO -->

  <script src="assets/js/nav.js"></script>

</body>
</html>