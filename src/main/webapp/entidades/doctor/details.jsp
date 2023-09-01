<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="doctor" type="com.espe.pry.models.Doctor"--%>

<t:template>
    <h1>Detalles del Doctor</h1>

    <div>
        <h4>Doctor</h4>
        <hr/>
        <dl class="row">
            <dt class="col-sm-2">Nombre</dt>
            <dd class="col-sm-10">
                <c:out value="${doctor.nombre}"/>
            </dd>
            <dt class="col-sm-2">Apellido</dt>
            <dd class="col-sm-10">
                <c:out value="${doctor.apellido}"/>
            </dd>
            <dt class="col-sm-2">Cédula</dt>
            <dd class="col-sm-10">
                <c:out value="${doctor.cedula}"/>
            </dd>
            <dt class="col-sm-2">Especialidad</dt>
            <dd class="col-sm-10">
                <c:out value="${doctor.especialidad.nombre}"/>
            </dd>
        </dl>
    </div>
    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/doctor?opcion=editar&id=${doctor.id}" class="btn btn-primary">
            Editar
        </a>
        <a href="${pageContext.request.contextPath}/doctor?opcion=index" class="material-button regresar">
            Regresar a la Lista de Doctores
        </a>
    </div>
</t:template>
