<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="doctor" type="com.espe.pry.models.Doctor"--%>

<t:template>
    <h1>Editar Doctor</h1>

    <h4>Doctor</h4>
    <hr/>
    <div class="row">
        <div class="col-md-4">
            <form action="${pageContext.request.contextPath}/doctor" method="post">
                <input type="hidden" name="_method" value="PUT" />
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
                    <label for="especialidad" class="control-label">Especialidad:</label>
                    <select id="especialidad" name="especialidad.id" class="form-control">
                        <c:forEach var="especialidad" items="${especialidades}">
                            <option value="${especialidad.id}" ${especialidad.id == doctor.especialidad.id ? 'selected' : ''}>
                                <c:out value="${especialidad.nombre}"/>
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="Guardar" class="btn btn-primary mt-2"/>
                </div>
            </form>
        </div>
    </div>

    <a href="${pageContext.request.contextPath}/doctor?opcion=index" class="material-button regresar">
        Regresar a la Lista de Doctores
    </a>
</t:template>
