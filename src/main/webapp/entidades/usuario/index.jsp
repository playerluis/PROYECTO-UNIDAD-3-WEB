<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="usuarios" type="java.util.List<com.espe.pry.models.Usuario>"--%>

<t:template>
    <h1>Inicio</h1>

    <p>
        <a href="${pageContext.request.contextPath}/usuario?opcion=registro" class="btn btn-primary">Crear Nuevo</a>
    </p>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Email</th>
            <th>Contraseña</th>
            <th></th>
        </tr>
        </thead>
        <tbody>

        <c:forEach var="usuario" items="${usuarios}">
            <tr>
                <td><c:out value="${usuario.nombre}"/></td>
                <td><c:out value="${usuario.apellido}"/></td>
                <td><c:out value="${usuario.email}"/></td>
                <td><c:out value="${usuario.password}"/></td>
                <td>
                    <a href="${pageContext.request.contextPath}/usuario?opcion=editar&id=${usuario.id}"
                       class="btn btn-secondary">
                        Editar
                    </a>
                    <a href="${pageContext.request.contextPath}/usuario?opcion=detalles&id=${usuario.id}"
                       class="btn btn-secondary">
                        Detalles
                    </a>
                    <a href="${pageContext.request.contextPath}/usuario?opcion=eliminar&id=${usuario.id}"
                       class="btn btn-danger">
                        Eliminar
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</t:template>
