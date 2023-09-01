<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="paciente" type="com.espe.pry.models.Paciente"--%>

<t:template>
    <h1>Detalles</h1>

    <div>
        <h4>Paciente</h4>
        <hr/>
        <dl class="row">
            <dt class="col-sm-2">Nombre</dt>
            <dd class="col-sm-10"><c:out value="${paciente.nombre}"/></dd>
            <dt class="col-sm-2">Apellido</dt>
            <dd class="col-sm-10"><c:out value="${paciente.apellido}"/></dd>
            <dt class="col-sm-2">Dirección</dt>
            <dd class="col-sm-10"><c:out value="${paciente.direccion}"/></dd>
            <dt class="col-sm-2">Fecha de Nacimiento</dt>
            <dd class="col-sm-10"><c:out value="${paciente.fechaDeNacimiento}"/></dd>
        </dl>
    </div>
    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/paciente?opcion=editar&id=${paciente.id}" class="btn btn-primary">
            Editar
        </a>
        <a href="${pageContext.request.contextPath}/paciente?opcion=index" class="material-button regresar">
            Regresar a la Lista de Pacientes
        </a>
    </div>
</t:template>
