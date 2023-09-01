<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 1/9/2023
  Time: 0:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>
    <h1>Crear Especialidad</h1>

    <h4>Especialidad</h4>
    <hr/>

    <div class="row">
        <div class="col-md-7">
            <form action="${pageContext.request.contextPath}/especialidad" method="post">
                <div>
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre">
                </div>

                <!-- Agregar más campos específicos de la especialidad -->
                <div>
                    <input type="submit" value="Crear">
                </div>
            </form>
        </div>
    </div>

    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/especialidad?opcion=index" class="material-button regresar">Regresar a la Lista de Especialidades</a>
    </div>

</t:template>

