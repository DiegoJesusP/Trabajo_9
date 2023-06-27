<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>School Gestor | Registrar Escuela</title>
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
<div class="container">
    <h1>Registrar Escuela</h1>
    <form action="/Escuela_Trabajo_9_war_exploded/CreateEscuela" method="get" class="formulario">
      <div class="form-group">
        <label for="id">ID:</label>
        <input
          type="number"
          class="form-control"
          id="id"
          name="id"
          min="1"
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
          placeholder="Ingresa la Dirección:"
        />
      </div>
      <br />
      <div class="select-form">
        <div class="form-group">
          <label for="nivelEducacion">Nivel educativo:</label><br />
          <select id="nivelEducacion" name="nivelEducacion">
            <option value="" hidden class="option1">
              Selecciona un nivel educativo:
            </option>
            <option value="Inicial">Inicial</option>
            <option value="Prescolar">Prescolar</option>
            <option value="Primaria">Primaria</option>
            <option value="Secundaria">Secundaria</option>
            <option value="MediaSuperior">Media Superior</option>
            <option value="Superior">Superior</option>
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
          placeholder="Ingresa el Número de Maestros:"
        />
      </div>
      <br />
      <div class="btn-center">
        <input type="submit" value="Registrar" />
      </div>
    </form>
  </div>
  <script src="assets/js/nav.js"></script>
</body>
</html>
