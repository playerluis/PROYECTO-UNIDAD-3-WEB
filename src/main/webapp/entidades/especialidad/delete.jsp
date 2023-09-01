<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="especialidad" type="com.espe.pry.models.Especialidad"--%>

<t:template>

        <h1>Eliminar</h1>

        <h3>¿Estás seguro/a de que deseas eliminar esta especialidad?</h3>

        <div class="card mt-4">
            <div class="card-body">
                <h4 class="card-title">Especialidad</h4>
                <hr/>
                <dl class="row">

                    <dt class="col-sm-2">Nombre</dt>
                    <dd class="col-sm-10">
                    <c:out value="${especialidad.nombre}"/></dd>
                    <!-- Agregar más campos específicos de la especialidad aquí -->
                </dl>

                <form action="${pageContext.request.contextPath}/especialidad" method="post">
                    <input type="hidden" name="_method" value="DELETE"/>
                    <input type="hidden" name="id" value="${especialidad.id}"/>
                    <button type="submit" class="btn btn-danger mt-2">Eliminar</button> |
                </form>
            </div>
        </div>

        <div class="mt-2">
            <a href="${pageContext.request.contextPath}/especialidad?opcion=index" class="btn btn-secondary">Regresar a la Lista</a>
        </div>

</t:template>
