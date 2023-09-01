<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="paciente" type="com.espe.pry.models.Paciente"--%>

<t:template>
    <h1>Eliminar</h1>

    <h3>¿Estás seguro/a de que deseas eliminar este paciente?</h3>
    <div>
        <h4>Paciente</h4>
        <hr/>
        <dl class="row">
            <dt class="col-sm-2">Nombre</dt>
            <dd class="col-sm-10"><c:out value="${paciente.nombre}"/></dd>
            <dt class="col-sm-2">Apellido</dt>
            <dd class="col-sm-10"><c:out value="${paciente.apellido}"/></dd>
            <dt class="col-sm-2">Fecha de Nacimiento</dt>
            <dd class="col-sm-10"><c:out value="${paciente.fechaNacimiento}"/></dd>
        </dl>

        <form action="${pageContext.request.contextPath}/paciente" method="post">
            <input type="hidden" name="_method" value="DELETE"/>
            <input type="hidden" name="id" value="${paciente.id}"/>
            <input type="submit" value="Eliminar" class="btn btn-danger mt-2"/> |
        </form>
    </div>
    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/paciente?opcion=index" class="material-button regresar">
            Regresar a la Lista de Pacientes
        </a>
    </div>
</t:template>
