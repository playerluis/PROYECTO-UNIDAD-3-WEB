<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="usuario" type="com.espe.pry.models.Usuario"--%>

<t:template>
    <h1>Detalles</h1>

    <div>
        <h4>Usuario</h4>
        <hr/>
        <dl class="row">
            <dt class="col-sm-2">Nombre</dt>
            <dd class="col-sm-10">
                <c:out value="${usuario.nombre}"/>
            </dd>
            <dt class="col-sm-2">Apellido</dt>
            <dd class="col-sm-10">
                <c:out value="${usuario.apellido}"/>
            </dd>
            <dt class="col-sm-2">Email</dt>
            <dd class="col-sm-10">
                <c:out value="${usuario.email}"/>
            </dd>
            <dt class="col-sm-2">Contraseña</dt>
            <dd class="col-sm-10">
                <c:out value="${usuario.password}"/>
            </dd>
        </dl>
    </div>
    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/usuario?opcion=editar&id=${usuario.id}" class="btn btn-primary">
            Editar
        </a>
        <a href="${pageContext.request.contextPath}/usuario?opcion=index" class="material-button regresar">
            Regresar a la Lista
        </a>
    </div>
</t:template>