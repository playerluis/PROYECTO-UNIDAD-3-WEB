<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="usuario" type="com.espe.pry.models.Usuario"--%>

<t:template>
    <h1>Eliminar</h1>

    <h3>¿Estás seguro/a de que deseas eliminar este usuario?</h3>
    <div>
        <h4>Usuario</h4>
        <hr/>
        <dl class="row">
            <dt class="col-sm-2">
                Nombre
            </dt>
            <dd class="col-sm-10">
                <c:out value="${usuario.nombre}"/>
            </dd>
            <dt class="col-sm-2">
                Apellido
            </dt>
            <dd class="col-sm-10">
                <c:out value="${usuario.apellido}"/>
            </dd>
            <dt class="col-sm-2">
                Email
            </dt>
            <dd class="col-sm-10">
                <c:out value="${usuario.email}"/>
            </dd>
            <dt class="col-sm-2">
                Contraseña
            </dt>
            <dd class="col-sm-10">
                <c:out value="${usuario.password}"/>
            </dd>
        </dl>

        <form action="${pageContext.request.contextPath}/usuario" method="post">
            <input type="hidden" name="_method" value="DELETE"/>
            <input type="hidden" name="id" value="${usuario.id}"/>
            <input type="submit" value="Eliminar" class="btn btn-danger mt-2"/> |
        </form>
    </div>
    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/usuario?opcion=index" class="material-button regresar">
            Regresar a la Lista
        </a>
    </div>
</t:template>
