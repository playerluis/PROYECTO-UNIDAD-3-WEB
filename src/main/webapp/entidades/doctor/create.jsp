<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<%--@elvariable id="especialidades" type="java.util.List<com.espe.pry.models.Especialidad>"--%>

<t:template>
    <h1>Crear Doctor</h1>

    <h4>Doctor</h4>
    <hr/>

    <div class="row">
        <div class="col-md-7">
            <form action="${pageContext.request.contextPath}/doctor" method="post">
                <div class="form-group">
                    <label for="nombre" class="control-label">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" class="form-control">
                </div>
                <div class="form-group">
                    <label for="apellido" class="control-label">Apellido:</label>
                    <input type="text" id="apellido" name="apellido" class="form-control">
                </div>
                <div class="form-group">
                    <label for="cedula" class="control-label">Cédula:</label>
                    <input type="text" id="cedula" name="cedula" class="form-control">
                </div>
                <div class="form-group">
                    <label for="especialidadId" class="control-label">Especialidad:</label>
                    <select id="especialidadId" name="especialidadId" class="form-control">
                        <c:forEach var="especialidad" items="${especialidades}">
                            <option value="${especialidad.id}">
                                <c:out value="${especialidad.nombre}"/>
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="Crear" class="btn btn-primary">
                </div>
            </form>
        </div>
    </div>

    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/doctor?opcion=index" class="btn btn-secondary regresar">Regresar a la Lista</a>
    </div>
</t:template>
