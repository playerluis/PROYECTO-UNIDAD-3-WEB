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
                <div class="form-group">
                    <input type="hidden" name="id" value="${usuario.id}"/>
                </div>
                <div class="form-group">
                    <label for="nombre" class="control-label">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" class="form-control" value="${usuario.nombre}">
                </div>
                <div class="form-group">
                    <label for="apellido" class="control-label">Apellido:</label>
                    <input type="text" id="apellido" name="apellido" class="form-control" value="${usuario.apellido}">
                </div>
                <div class="form-group">
                    <label for="email" class="control-label">Email:</label>
                    <input type="email" id="email" name="email" class="form-control" value="${usuario.email}">
                </div>
                <div class="form-group">
                    <label for="password" class="control-label">Contraseña:</label>
                    <input type="password" id="password" name="password" class="form-control" value="${usuario.password}">
                </div>
                <div class="form-group">
                    <input type="submit" value="Guardar" class="btn btn-primary mt-2"/>
                </div>
            </form>
        </div>
    </div>

    <a href="${pageContext.request.contextPath}/usuario?opcion=index" class="material-button regresar">
        Regresar a la Lista
    </a>
</t:template>