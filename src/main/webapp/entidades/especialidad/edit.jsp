<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 1/9/2023
  Time: 0:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="especialidad" type="com.espe.pry.models.Especialidad"--%>

<t:template>
    <h1>EDITAR</h1>

    <h4>Especialidad</h4>
    <hr/>
    <div class="row">
        <div class="col-md-4">
            <form action="${pageContext.request.contextPath}/especialidad" method="post">
                <input type="hidden" name="_method" value="PUT" />
                <div>
                    <input type="hidden" name="id" value="${especialidad.id}"/>
                </div>
                <div>
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" value="${especialidad.nombre}">
                </div>
                <div>
                    <label for="descripcion">Descripción:</label>
                    <input type="text" id="descripcion" name="descripcion" value="${especialidad.descripcion}">
                </div>
                <!-- Agregar más campos específicos de la especialidad -->
                <div>
                    <input type="submit" value="Guardar" class="btn btn-primary mt-2"/>
                </div>
            </form>
        </div>
    </div>

    <a href="${pageContext.request.contextPath}/especialidad?opcion=index" class="material-button regresar">
        Regresar a la Lista
    </a>
</t:template>

