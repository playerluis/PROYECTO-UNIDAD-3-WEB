<%--
  Created by IntelliJ IDEA.
  User: brand
  Date: 1/9/2023
  Time: 0:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Paciente</title>
</head>
<body>
    <h1>Crear Paciente</h1>

    <div class="row">
        <div class="col-md-7">
            <form action="${pageContext.request.contextPath}/paciente" method="post">
                <div>
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre">
                </div>
                <div>
                    <label for="apellido">Apellido:</label>
                    <input type="text" id="apellido" name="apellido">
                </div>
                <div>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email">
                </div>
                <div>
                    <label for="telefono">Teléfono:</label>
                    <input type="tel" id="telefono" name="telefono">
                </div>
                <div>
                    <label for="fechaNacimiento">Fecha de Nacimiento:</label>
                    <input type="date" id="fechaNacimiento" name="fechaNacimiento">
                </div>
                <div>
                    <label for="direccion">Dirección:</label>
                    <input type="text" id="direccion" name="direccion">
                </div>
                <div>
                    <input type="submit" value="Crear">
                </div>
            </form>
        </div>
    </div>

    <a href="${pageContext.request.contextPath}/paciente?opcion=index" class="material-button regresar">Regresar a la Lista de Pacientes</a>


</body>
</html>
