<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="paciente" type="com.espe.pry.models.Paciente"--%>

<t:template>
    <h1>Editar</h1>

    <h4>Paciente</h4>
    <hr/>
    <div class="row">
        <div class="col-md-4">
            <form action="${pageContext.request.contextPath}/paciente" method="post">
                <input type="hidden" name="_method" value="PUT" />
                <div>
                    <input type="hidden" name="id" value="${paciente.id}"/>
                </div>
                <div>
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" value="${paciente.nombre}">
                </div>
                <div>
                    <label for="apellido">Apellido:</label>
                    <input type="text" id="apellido" name="apellido" value="${paciente.apellido}">
                </div>
                <div>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" value="${paciente.email}">
                </div>
                <div>
                    <label for="telefono">Teléfono:</label>
                    <input type="tel" id="telefono" name="telefono" value="${paciente.telefono}">
                </div>
                <div>
                    <input type="submit" value="Guardar" class="btn btn-primary mt-2"/>
                </div>
            </form>
        </div>
    </div>

    <a href="${pageContext.request.contextPath}/paciente?opcion=index" class="material-button regresar">
        Regresar a la Lista de Pacientes
    </a>
</t:template>
