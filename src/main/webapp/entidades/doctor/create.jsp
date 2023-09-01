<%--
  Created by IntelliJ IDEA.
  User: Lesly
  Date: 1/9/2023
  Time: 0:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>
    <h1>Crear Doctor</h1>

    <h4>Doctor</h4>
    <hr/>

    <div class="row">
        <div class="col-md-7">
            <form action="${pageContext.request.contextPath}/doctor" method="post">
                <div>
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre">
                </div>
                <div>
                    <label for="apellido">Apellido:</label>
                    <input type="text" id="apellido" name="apellido">
                </div>
                <div>
                    <label for="cedula">Cédula:</label>
                    <input type="text" id="cedula" name="cedula">
                </div>
                <div>
                    <label for="especialidad">Especialidad:</label>
                    <select id="especialidad" name="especialidad.id">
                        <c:forEach var="especialidad" items="${listaEspecialidades}">
                            <option value="${especialidad.id}">
                                <c:out value="${especialidad.nombre}"/>
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <div>
                    <input type="submit" value="Crear">
                </div>
            </form>
        </div>
    </div>

    <div class="mt-2">
        <a href="${pageContext.request.contextPath}/doctor?opcion=index" class="material-button regresar">Regresar a la Lista</a>
    </div>
</t:template>
