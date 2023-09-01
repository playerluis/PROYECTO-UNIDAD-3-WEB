<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="especialidades" type="java.util.List<com.espe.pry.models.Especialidad>"--%>

<t:template>

    <h1>Inicio</h1>

    <p>
        <a href="${pageContext.request.contextPath}/especialidad?opcion=registro" class="btn btn-primary">Crear Nueva Especialidad</a>
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