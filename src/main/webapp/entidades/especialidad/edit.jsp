<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="especialidad" type="com.espe.pry.models.Especialidad"--%>


<t:template>

    <h1 class="mb-4">editar Especialidad</h1>

    <div class="row">
        <div class="col-md-4">
            <form action="${pageContext.request.contextPath}/especialidad" method="post">
                <input type="hidden" name="_method" value="PUT" />
                <div class="form-group">
                    <input type="hidden" name="id" value="${especialidad.id}"/>
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" class="form-control" value="${especialidad.nombre}">
                </div>

                <div class="form-group">
                    <input type="submit" value="Guardar" class="btn btn-primary mt-2"/>
                </div>
            </form>
        </div>
    </div>

    <a href="${pageContext.request.contextPath}/especialidad?opcion=index" class="btn btn-secondary mt-2">Regresar a la Lista</a>

</t:template>