<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="especialidad" type="com.espe.pry.models.Especialidad"--%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar Especialidad</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h1 class="mb-4">Eliminar Especialidad</h1>

    <h3>¿Estás seguro/a de que deseas eliminar esta especialidad?</h3>

    <div class="card mt-4">
        <div class="card-body">
            <h4 class="card-title">Especialidad</h4>
            <hr/>
            <dl class="row">
                <dt class="col-sm-2">Nombre</dt>
                <dd class="col-sm-10"><c:out value="${especialidad.nombre}"/></dd>
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
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
