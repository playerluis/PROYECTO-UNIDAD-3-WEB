<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--@elvariable id="citas" type="java.util.List<com.espe.pry.models.Cita>"--%>


<t:template>
    <h1>Inicio</h1>
    <div id="calendar"></div>
    <script>
        let dates = [
            <c:forEach var="cita" items="${citas}">
            {
                id: ${cita.id},
                title: "${cita.descripcion}",
                description: "${cita.descripcion}",
                start: "${cita.fecha + 'T' + cita.horaDeInicio}",
                end: "${cita.fecha + 'T' + (cita.horaDeInicio + cita.duracion)}",
                url: ""
            },
            </c:forEach>
        ];

        document.addEventListener('DOMContentLoaded', function () {
            const calendarEl = document.getElementById('calendar');
            const calendar = new FullCalendar.Calendar(calendarEl, {
                locale: "es",
                height: 350,
                timeZone: 'UTC',
                initialView: 'timeGridWeek',
                aspectRatio: 1.5,
                headerToolbar: {},
                events: dates
            });
            calendar.render();
        });
    </script>
    <br>
    <p>
        <a href="${pageContext.request.contextPath}/cita?opcion=registro" class="btn btn-primary">Crear Nuevo</a>
    </p>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Fecha</th>
            <th>Hora de Inicio</th>
            <th>Horas</th>
            <th>Doctor</th>
            <th>Paciente</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${citas}">
            <tr>
                <td>${item.fecha}</td>
                <td>${item.horaDeInicio}</td>
                <td>${item.duracion}</td>
                <td>${item.doctor.apellido}</td>
                <td>${item.paciente.apellido}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/cita?opcion=editar&id=${item.id}"
                       class="btn btn-secondary">
                        Editar
                    </a>
                    <a href="${pageContext.request.contextPath}/cita?opcion=detalles&id=${item.id}"
                       class="btn btn-secondary">
                        Detalles
                    </a>
                    <a href="${pageContext.request.contextPath}/cita?opcion=eliminar&id=${item.id}"
                       class="btn btn-danger">
                        Eliminar
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</t:template>
