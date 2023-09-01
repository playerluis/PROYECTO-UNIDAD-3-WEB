<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 1/9/2023
  Time: 0:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="especialidad" type="com.espe.pry.models.Especialidad"--%>

<t:template>
    <h1>Detalles</h1>

    <div>
        <h4>Especialidad</h4>
        <hr/>
        <dl class="row">
            <dt class="col-sm-2">Nombre</dt>
            <dd class="col-sm-10"><c:out value="${especialidad.nombre}"/></dd>
            <!-- Agregar más campos específicos de la especialidad -->
        </dl>
    </div>
    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/especialidad?opcion=editar&id=${especialidad.id}" class="btn btn-primary">
            Editar
        </a>
        <a href="${pageContext.request.contextPath}/especialidad?opcion=index" class="material-button regresar">
            Regresar a la Lista
        </a>
    </div>
</t:template>
