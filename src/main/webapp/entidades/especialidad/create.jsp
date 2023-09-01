<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>

    <h1>Crear Especialidad</h1>

    <div class="row">
        <div class="col-md-7">
            <form action="${pageContext.request.contextPath}/especialidad" method="post">
                <div class="form-group">
                    <label for="nombre" class="control-label">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" class="form-control">
                </div>
                <!-- Agregar más campos específicos de la especialidad aquí -->
                <div class="form-group">
                    <input type="submit" value="Crear" class="btn btn-primary">
                </div>
            </form>
        </div>
    </div>

    <div class="mt-4">
        <a href="${pageContext.request.contextPath}/especialidad?opcion=index" class="btn btn-secondary">Regresar a la Lista de Especialidades</a>
    </div>

</t:template>