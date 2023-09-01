<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>
    <!DOCTYPE html>
    <html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Detalles de Especialidad</title>
    <div class="container mt-5">
        <h1>Detalles</h1>

        <div>
            <h4>Especialidad</h4>
            <hr/>
            <dl class="row">
                <dt class="col-sm-2">Nombre</dt>
                <dd class="col-sm-10"><c:out value="${especialidad.nombre}"/></dd>
                <!-- Agregar más campos específicos de la especialidad aquí -->
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
    </div>

</t:template>
