<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%--@elvariable id="cita" type="com.espe.pry.models.Cita"--%>

<t:template>
    <h1>Crear</h1>

    <h4>Cita</h4>
    <hr/>
    <div class="row">
        <div class="col-md-7">
            <form action="${pageContext.request.contextPath}/cita" method="post">
                <input type="hidden" name="_method" value="PUT"/>
                <div>
                    <input type="hidden" name="id" value="${cita.id}"/>
                </div>

                <div class="form-group">
                    <label for="fecha" class="control-label">Fecha:</label>
                    <input type="date" id="fecha" name="fecha" class="form-control" value="${cita.fecha}"/>
                </div>
                <div class="form-group">
                    <label for="horaDeInicio" class="control-label">Hora de Inicio:</label>
                    <input type="time" id="horaDeInicio" name="horaDeInicio" class="form-control"
                           value="${cita.horaDeInicio}"/>
                </div>
                <div class="form-group">
                    <label for="duracion" class="control-label">Duración (horas):</label>
                    <input type="number" id="duracion" name="duracion" class="form-control" value="${cita.duracion}"/>
                </div>
                <div class="form-group">
                    <label for="DoctorId" class="control-label">Doctor:</label>
                    <select id="DoctorId" name="DoctorId" class="form-control">
                        <%--@elvariable id="doctores" type="java.util.List<com.espe.pry.models.Doctor>"--%>
                    <c:forEach var="doctor" items="${doctores}">

                        <c:if test="${doctor.id == cita.doctor.id}">
                            <option value="${doctor.id}" selected>${doctor.apellido}</option>
                        </c:if>
                        <c:if test="${doctor.id != cita.doctor.id}">
                            <option value="${doctor.id}">${doctor.apellido}</option>
                        </c:if>

                    </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="PacienteId" class="control-label">Paciente:</label>
                    <select id="PacienteId" name="PacienteId" class="form-control">
                            <%--@elvariable id="pacientes" type="java.util.List<com.espe.pry.models.Paciente>"--%>
                        <c:forEach var="paciente" items="${pacientes}">
                            <c:if test="${paciente.id == cita.paciente.id}">
                                <option value="${paciente.id}" selected>${paciente.apellido}</option>
                            </c:if>
                            <c:if test="${paciente.id != cita.paciente.id}">
                                <option value="${paciente.id}">${paciente.apellido}</option>
                            </c:if>
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

