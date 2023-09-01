<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>
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
                    <label for="fechaDeNacimiento">Fecha de Nacimiento:</label>
                    <input type="date" id="fechaDeNacimiento" name="fechaDeNacimiento">
                </div>
                <div>
                    <input type="submit" value="Crear">
                </div>
            </form>
        </div>
    </div>

    <a href="${pageContext.request.contextPath}/paciente?opcion=index" class="material-button regresar">Regresar a la Lista de Pacientes</a>
</t:template>
