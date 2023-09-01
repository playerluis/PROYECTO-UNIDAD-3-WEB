<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="usuario" type="com.espe.pry.models.Usuario"--%>

<t:template>
    <h1>Editar</h1>

    <h4>Usuario</h4>
    <hr/>
    <div class="row">
        <div class="col-md-4">
            <form action="${pageContext.request.contextPath}/usuario" method="post">
                <input type="hidden" name="_method" value="PUT" />
                <div>
                    <input type="hidden" name="id" value="${usuario.id}"/>
                </div>
                <div>
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" value="${usuario.nombre}">
                </div>
                <div>
                    <label for="apellido">Apellido:</label>
                    <input type="text" id="apellido" name="apellido" value="${usuario.apellido}">
                </div>
                <div>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" value="${usuario.email}">
                </div>
                <div>
                    <label for="password">Contraseña:</label>
                    <input type="password" id="password" name="password" value="${usuario.password}">
                </div>
                <div>
                    <input type="submit" value="Guardar" class="btn btn-primary mt-2"/>
                </div>
            </form>
        </div>
    </div>

    <a href="${pageContext.request.contextPath}/usuario?opcion=index" class="material-button regresar">
        Regresar a la Lista
    </a>
</t:template>