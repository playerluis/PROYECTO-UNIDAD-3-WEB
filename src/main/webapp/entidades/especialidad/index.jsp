<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="especialidades" type="java.util.List<com.espe.pry.models.Especialidad>"--%>
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
        <a href="${pageContext.request.contextPath}/especialidad?opcion=registro" class="btn btn-primary mt-2 mb-2">Crear Nueva Especialidad</a>
    </p>

    <table class="table table-hover">
        <thead>
        <tr>
            <th>Nombre</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="especialidad" items="${especialidades}">
            <tr>
                <td><c:out value="${especialidad.nombre}"/></td>
                <td>
                    <a href="${pageContext.request.contextPath}/especialidad?opcion=editar&id=${especialidad.id}"
                       class="btn btn-secondary">
                        Editar
                    </a>
                    <a href="${pageContext.request.contextPath}/especialidad?opcion=detalles&id=${especialidad.id}"
                       class="btn btn-secondary">
                        Detalles
                    </a>
                    <a href="${pageContext.request.contextPath}/especialidad?opcion=eliminar&id=${especialidad.id}"
                       class="btn btn-danger">
                        Eliminar
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</t:template>