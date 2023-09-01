<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="doctores" type="java.util.List<com.espe.pry.models.Doctor>"--%>

<t:template>
    <div class="container mt-5">
        <h1 class="display-4">Lista de Doctores</h1>

        <p>
            <a href="${pageContext.request.contextPath}/doctor?opcion=crear" class="btn btn-primary">Crear Nuevo Doctor</a>
        </p>
        <table class="table table-hover">
            <thead>
            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Cédula</th>
                <th>Especialidad</th>
                <th></th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="doctor" items="${doctores}">
                <tr>
                    <td><c:out value="${doctor.nombre}"/></td>
                    <td><c:out value="${doctor.apellido}"/></td>
                    <td><c:out value="${doctor.cedula}"/></td>
                    <td><c:out value="${doctor.especialidad.nombre}"/></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/doctor?opcion=editar&id=${doctor.id}"
                           class="btn btn-secondary">
                            Editar
                        </a>
                        <a href="${pageContext.request.contextPath}/doctor?opcion=detalles&id=${doctor.id}"
                           class="btn btn-secondary">
                            Detalles
                        </a>
                        <a href="${pageContext.request.contextPath}/doctor?opcion=eliminar&id=${doctor.id}"
                           class="btn btn-danger">
                            Eliminar
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</t:template>
