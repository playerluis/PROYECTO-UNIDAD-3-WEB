<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%--@elvariable id="doctores" type="java.util.List<com.espe.pry.models.Doctor>"--%>
<%--@elvariable id="pacientes" type="java.util.List<com.espe.pry.models.Paciente>"--%>

<t:template>
    <h1>Crear</h1>

    <h4>Cita</h4>
    <hr/>
    <div class="row">
        <div class="col-md-7">
            <form action="${pageContext.request.contextPath}/cita" method="post">
                <div class="form-group">
                    <label for="fecha" class="control-label">Fecha:</label>
                    <input type="date" id="fecha" name="fecha" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="horaDeInicio" class="control-label">Hora de Inicio:</label>
                    <input type="time" id="horaDeInicio" name="horaDeInicio" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="duracion" class="control-label">Duración (horas):</label>
                    <input type="number" id="duracion" name="duracion" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="doctorId" class="control-label">Doctor:</label>
                    <select id="doctorId" name="doctorId" class="form-control">
                        <c:forEach var="doctor" items="${doctores}">
                            <option value="${doctor.id}">${doctor.apellido}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="pacienteId" class="control-label">Paciente:</label>
                    <select id="pacienteId" name="pacienteId" class="form-control">
                        <c:forEach var="paciente" items="${pacientes}">
                            <option value="${paciente.id}">${paciente.apellido}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="Crear" class="btn btn-primary mt-2"/>
                </div>
            </form>
        </div>
    </div>

    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/cita?opcion=index" class="material-button regresar">Regresar a la
            Lista</a>
    </div>
</t:template>

