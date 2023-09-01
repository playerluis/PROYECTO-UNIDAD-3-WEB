<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 1/9/2023
  Time: 0:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="especialidad" type="com.espe.pry.models.Especialidad"--%>

<t:template>
    <h1>Eliminar</h1>

    <h3>¿Estás seguro/a de que deseas eliminar esta especialidad?</h3>
    <div>
        <h4>Especialidad</h4>
        <hr/>
        <dl class="row">
            <dt class="col-sm-2">
                Nombre
            </dt>
            <dd class="col-sm-10">
                <c:out value="${especialidad.nombre}"/>
            </dd>
            <dt class="col-sm-2">
                Descripción
            </dt>
            <dd class="col-sm-10">
                <c:out value="${especialidad.descripcion}"/>
            </dd>
            <!-- Agregar más campos específicos de la especialidad -->
        </dl>

        <form action="${pageContext.request.contextPath}/especialidad" method="post">
            <input type="hidden" name="_method" value="DELETE"/>
            <input type="hidden" name="id" value="${especialidad.id}"/>
            <input type="submit" value="Eliminar" class="btn btn-danger mt-2"/> |
        </form>
    </div>
    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/especialidad?opcion=index" class="material-button regresar">
            Regresar a la Lista
        </a>
    </div>
</t:template>
