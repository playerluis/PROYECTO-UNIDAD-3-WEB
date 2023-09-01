<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="paciente" type="com.espe.pry.models.Paciente"--%>

<t:template>
    <h1>Crear Paciente</h1>

    <div class="row">
        <div class="col-md-7">
            <form action="${pageContext.request.contextPath}/paciente" method="post">
                <div class="form-group">
                    <label for="nombre" class="control-label">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" class="form-control">
                </div>
                <div class="form-group">
                    <label for="apellido" class="control-label">Apellido:</label>
                    <input type="text" id="apellido" name="apellido" class="form-control">
                </div>
                <div class="form-group">
                    <label for="direccion" class="control-label">Dirección:</label>
                    <input type="text" id="direccion" name="direccion" class="form-control">
                </div>
                <div class="form-group">
                    <label for="fechaDeNacimiento" class="control-label">Fecha de Nacimiento:</label>
                    <input type="date" id="fechaDeNacimiento" name="fechaDeNacimiento" class="form-control">
                </div>
                <div class="form-group">
                    <input type="submit" value="Crear">
                </div>
            </form>
        </div>
    </div>

    <a href="${pageContext.request.contextPath}/paciente?opcion=index" class="material-button regresar">Regresar a la
        Lista de Pacientes</a>
</t:template>
