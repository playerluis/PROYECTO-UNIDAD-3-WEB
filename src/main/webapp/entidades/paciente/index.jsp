<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="pacientes" type="java.util.List<com.espe.pry.models.Paciente>"--%>
<%--@elvariable id="errores" type="java.util.List<java.lang.String>"--%>


<t:template>
    <h1>Inicio</h1>

    <c:if test="${errores.size() > 0}">
        <div class="alert alert-danger">
            <ul>
                <c:forEach var="error" items="${errores}">
                    <li>${error}</li>
                </c:forEach>
            </ul>
        </div>
    </c:if>

    <p>
        <a href="${pageContext.request.contextPath}/paciente?opcion=registro" class="btn btn-primary">Crear Nuevo Paciente</a>
    </p>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Fecha de Nacimiento</th>
            <th>Fecha de Registro</th>
            <th></th>
        </tr>
        </thead>
        <tbody>

        <c:forEach var="paciente" items="${pacientes}">
            <tr>
                <td><c:out value="${paciente.nombre}"/></td>
                <td><c:out value="${paciente.apellido}"/></td>
                <td><c:out value="${paciente.fechaDeNacimiento}"/></td>
                <td><c:out value="${paciente.direccion}"/></td>
                <td><c:out value="${paciente.fechaDeRegistro}"/></td>
                <td>
                    <a href="${pageContext.request.contextPath}/paciente?opcion=editar&id=${paciente.id}"
                       class="btn btn-secondary">
                        Editar
                    </a>
                    <a href="${pageContext.request.contextPath}/paciente?opcion=detalles&id=${paciente.id}"
                       class="btn btn-secondary">
                        Detalles
                    </a>
                    <a href="${pageContext.request.contextPath}/paciente?opcion=eliminar&id=${paciente.id}"
                       class="btn btn-danger">
                        Eliminar
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</t:template>
