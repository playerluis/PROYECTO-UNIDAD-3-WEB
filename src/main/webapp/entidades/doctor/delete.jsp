<%--
  Created by IntelliJ IDEA.
  User: Lesly
  Date: 1/9/2023
  Time: 0:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="doctor" type="com.espe.pry.models.Doctor"--%>

<t:template>
    <div class="container mt-5">
        <h1 class="display-4">Eliminar Doctor</h1>

        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Doctor</h4>
                <hr/>

                <dl class="row">
                    <dt class="col-sm-2">Nombre</dt>
                    <dd class="col-sm-10"><c:out value="${doctor.nombre}"/></dd>
                    <dt class="col-sm-2">Apellido</dt>
                    <dd class="col-sm-10"><c:out value="${doctor.apellido}"/></dd>
                    <dt class="col-sm-2">Cédula</dt>
                    <dd class="col-sm-10"><c:out value="${doctor.cedula}"/></dd>
                    <dt class="col-sm-2">Especialidad</dt>
                    <dd class="col-sm-10"><c:out value="${doctor.especialidad.nombre}"/></dd>
                </dl>

                <form action="${pageContext.request.contextPath}/doctor" method="post">
                    <input type="hidden" name="_method" value="DELETE"/>
                    <input type="hidden" name="id" value="${doctor.id}"/>
                    <input type="submit" value="Eliminar" class="btn btn-danger mt-2"/> |
                </form>
            </div>
        </div>

        <div class="mt-2">
            <a href="${pageContext.request.contextPath}/doctor?opcion=index" class="btn btn-secondary">Regresar a la Lista</a>
        </div>
    </div>
</t:template>
