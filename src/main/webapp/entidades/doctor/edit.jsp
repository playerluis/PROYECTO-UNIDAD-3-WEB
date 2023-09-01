<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--@elvariable id="doctor" type="com.espe.pry.models.Doctor"--%>
<%--@elvariable id="especialidades" type="java.util.List<com.espe.pry.models.Especialidad>"--%>

<t:template>
    <h1>Editar Doctor</h1>

    <h4>Doctor</h4>
    <hr/>
    <div class="row">
        <div class="col-md-4">
            <form action="${pageContext.request.contextPath}/doctor" method="post">
                <input type="hidden" name="_method" value="PUT"/>
                <div class="form-group">
                    <input type="hidden" name="id" value="${doctor.id}"/>
                </div>
                <div class="form-group">
                    <label for="nombre" class="control-label">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" class="form-control" value="${doctor.nombre}">
                </div>
                <div class="form-group">
                    <label for="apellido" class="control-label">Apellido:</label>
                    <input type="text" id="apellido" name="apellido" class="form-control" value="${doctor.apellido}">
                </div>
                <div class="form-group">
                    <label for="cedula" class="control-label">Cédula:</label>
                    <input type="text" id="cedula" name="cedula" class="form-control" value="${doctor.cedula}">
                </div>
                <div class="form-group">
                    <label for="especialidadId" class="control-label">Especialidad:</label>
                    <select id="especialidadId" name="especialidadId" class="form-control">
                        <c:forEach var="especialidad" items="${especialidades}">
                            <c:if test="${especialidad.id == doctor.especialidad.id}">
                                <option value="${especialidad.id}" selected>${especialidad.nombre}</option>
                            </c:if>
                            <c:if test="${especialidad.id != doctor.especialidad.id}">
                                <option value="${especialidad.id}">${especialidad.nombre}</option>
                            </c:if>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="Guardar" class="btn btn-primary mt-2"/>
                </div>
            </form>
        </div>
    </div>

    <a href="${pageContext.request.contextPath}/doctor?opcion=index" class="material-button regresar mt-2">
        Regresar a la Lista de Doctores
    </a>
</t:template>
