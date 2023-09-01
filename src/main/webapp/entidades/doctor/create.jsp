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
    <div class="container mt-5">
        <h1 class="display-4">Crear Doctor</h1>

        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Doctor</h4>
                <hr/>

                <form action="${pageContext.request.contextPath}/doctor" method="post">
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre:</label>
                        <input type="text" class="form-control" id="nombre" name="nombre">
                    </div>
                    <div class="mb-3">
                        <label for="apellido" class="form-label">Apellido:</label>
                        <input type="text" class="form-control" id="apellido" name="apellido">
                    </div>
                    <div class="mb-3">
                        <label for="cedula" class="form-label">Cédula:</label>
                        <input type="text" class="form-control" id="cedula" name="cedula">
                    </div>
                    <div class="mb-3">
                        <label for="especialidad" class="form-label">Especialidad:</label>
                        <select class="form-select" id="especialidad" name="especialidad.id">
                            <c:forEach var="especialidad" items="${listaEspecialidades}">
                                <option value="${especialidad.id}">
                                    <c:out value="${especialidad.nombre}"/>
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <input type="submit" value="Crear" class="btn btn-primary">
                    </div>
                </form>
            </div>
        </div>

        <div class="mt-2">
            <a href="${pageContext.request.contextPath}/doctor?opcion=index" class="btn btn-secondary">Regresar a la Lista</a>
        </div>
    </div>
</t:template>
