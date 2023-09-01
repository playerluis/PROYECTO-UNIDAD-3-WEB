<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>
    <h1>Crear</h1>

    <h4>Usuario</h4>
    <hr/>

    <div class="row">
        <div class="col-md-7">
            <form action="${pageContext.request.contextPath}/usuario" method="post">
                <div>
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre">
                </div>
                <div>
                    <label for="apellido">Apellido:</label>
                    <input type="text" id="apellido" name="apellido">
                </div>
                <div>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email">
                </div>
                <div>
                    <label for="password">Contraseña:</label>
                    <input type="password" id="password" name="password">
                </div>
                <div>
                    <input type="submit" value="Crear">
                </div>
            </form>
        </div>
    </div>

    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/usuario?opcion=index" class="material-button regresar">Regresar a la Lista</a>
    </div>

</t:template>