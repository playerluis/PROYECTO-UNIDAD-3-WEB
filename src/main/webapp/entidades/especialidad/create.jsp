<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Especialidad</title>
</head>
<body>

<div class="container mt-5">
    <h1 class="mb-4">Crear Especialidad</h1>

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
</div>
</body>
</html>
</t:template>