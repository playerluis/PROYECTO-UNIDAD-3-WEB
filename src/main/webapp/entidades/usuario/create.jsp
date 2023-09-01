<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>
    <h1>Crear</h1>

    <h4>Usuario</h4>
    <hr/>

    <div class="row">
        <div class="col-md-7">
            <form action="${pageContext.request.contextPath}/usuario" method="post">
                <div class="form-group">
                    <label for="nombre" class="control-label">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" class="form-control">
                </div>
                <div class="form-group">
                    <label for="apellido" class="control-label">Apellido:</label>
                    <input type="text" id="apellido" name="apellido" class="form-control">
                </div>
                <div class="form-group">
                    <label for="email" class="control-label">Email:</label>
                    <input type="email" id="email" name="email" class="form-control">
                </div>
                <div class="form-group">
                    <label for="password" class="control-label">Contraseña:</label>
                    <input type="password" id="password" name="password" class="form-control">
                </div>
                <div class="form-group">
                    <input type="submit" value="Crear" class="btn btn-primary">
                </div>
            </form>
        </div>
    </div>

    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/usuario?opcion=index" class="material-button regresar">Regresar a la Lista</a>
    </div>

</t:template>