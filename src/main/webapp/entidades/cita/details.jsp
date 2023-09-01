<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%--@elvariable id="cita" type="com.espe.pry.models.Cita"--%>


<t:template>
    <h1>Detalles</h1>

    <div>
        <h4>Cita</h4>
        <hr/>
        <dl class="row">
            <dt class="col-sm-2">
                Fecha
            </dt>
            <dd class="col-sm-10">
                <c:out value="${cita.fecha}" />
            </dd>
            <dt class="col-sm-2">
                Hora de Inicio
            </dt>
            <dd class="col-sm-10">
                <c:out value="${cita.horaDeInicio}" />
            </dd>
            <dt class="col-sm-2">
                Duracion (horas)
            </dt>
            <dd class="col-sm-10">
                <c:out value="${cita.duracion}" />
            </dd>
            <dt class="col-sm-2">
                Doctor
            </dt>
            <dd class="col-sm-10">
                <c:out value="${cita.doctor.apellido}" />
            </dd>
            <dt class="col-sm-2">
                Paciente
            </dt>
            <dd class="col-sm-10">
                <c:out value="${cita.paciente.apellido}" />
            </dd>
        </dl>
    </div>
    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/cita?opcion=editar&id=${cita.id}" class="btn btn-primary mb-2">
            Editar
        </a>
        <a href="${pageContext.request.contextPath}/cita?opcion=index" class="material-button regresar">
            Regresar a la Lista
        </a>
    </div>
</t:template>
