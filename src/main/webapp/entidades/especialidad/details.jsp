<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="especialidad" type="com.espe.pry.models.Especialidad"--%>

<t:template>
        <h1>Detalles</h1>

        <div>
            <h4>Especialidad</h4>
            <hr/>
            <dl class="row">
                <dt class="col-sm-2">Nombre</dt>
                <dd class="col-sm-10"><c:out value="${especialidad.nombre}"/></dd>
            </dl>
        </div>
        <div class="mt-2">
            <a href="${pageContext.request.contextPath}/especialidad?opcion=editar&id=${especialidad.id}" class="btn btn-primary">
                Editar
            </a>
            <a href="${pageContext.request.contextPath}/especialidad?opcion=index" class="btn btn-secondary">
                Regresar a la Lista
            </a>
        </div>
</t:template>
