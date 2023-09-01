<%--
  Created by IntelliJ IDEA.
  User: Lesly
  Date: 1/9/2023
  Time: 0:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="doctor" type="com.espe.pry.models.Doctor"--%>

<t:template>
    <h1>Editar</h1>

    <h4>Doctor</h4>
    <hr/>
    <div class="row">
        <div class="col-md-4">
            <form action="${pageContext.request.contextPath}/doctor" method="post">
                <input type="hidden" name="_method" value="PUT" />
                <div>
                    <input type="hidden" name="id" value="${doctor.id}"/>
                </div>
                <div>
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" value="${doctor.nombre}">
                </div>
                <div>
                    <label for="apellido">Apellido:</label>
                    <input type="text" id="apellido" name="apellido" value="${doctor.apellido}">
                </div>
                <div>
                    <label for="cedula">Cédula:</label>
                    <input type="text" id="cedula" name="cedula" value="${doctor.cedula}">
                </div>
                <div>
                    <label for="especialidad">Especialidad:</label>
                    <select id="especialidad" name="especialidad.id">
                        <c:forEach var="especialidad" items="${listaEspecialidades}">
                            <option value="${especialidad.id}" ${especialidad.id == doctor.especialidad.id ? 'selected' : ''}>
                                <c:out value="${especialidad.nombre}"/>
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <div>
                    <input type="submit" value="Guardar" class="btn btn-primary mt-2"/>
                </div>
            </form>
        </div>
    </div>

    <a href="${pageContext.request.contextPath}/doctor?opcion=index" class="material-button regresar">
        Regresar a la Lista de Doctores
    </a>
</t:template>

