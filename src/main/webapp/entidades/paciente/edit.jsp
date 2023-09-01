<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="paciente" type="com.espe.pry.models.Paciente"--%>

<t:template>
    <h1>Editar</h1>
    <h4>Paciente</h4>
    <hr/>
    <div class="row">
        <div class="col-md-4">
            <form action="${pageContext.request.contextPath}/paciente" method="post">
                <input type="hidden" name="_method" value="PUT" />
                <div class="form-group">
                    <input type="hidden" name="id" value="${paciente.id}"/>
                </div>
                <div class="form-group">
                    <label for="nombre" class="control-label">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" class="form-control" value="${paciente.nombre}">
                </div>
                <div class="form-group">
                    <label for="apellido" class="control-label">Apellido:</label>
                    <input type="text" id="apellido" name="apellido" class="form-control" value="${paciente.apellido}">
                </div>
                <div class="form-group">
                    <label for="direccion" class="control-label">Dirección:</label>
                    <input type="text" id="direccion" name="direccion" class="form-control" value="${paciente.direccion}">
                </div>
                <div class="form-group">
                    <label for="fechaDeNacimiento" class="control-label">Fecha de Nacimiento:</label>
                    <input type="text" id="fechaDeNacimiento" name="fechaDeNacimiento" class="form-control" value="${paciente.fechaDeNacimiento}">
                </div>
                <div class="form-group">
                    <input type="submit" value="Guardar" class="btn btn-primary mt-2"/>
                </div>
            </form>
        </div>
    </div>


    <a href="${pageContext.request.contextPath}/paciente?opcion=index" class="material-button regresar">
        Regresar a la Lista de Pacientes
    </a>
</t:template>
