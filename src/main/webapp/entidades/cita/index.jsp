<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fc" uri="http://fullcalendar.io/taglib" %>
<%--@elvariable id="citas" type="java.util.List<com.espe.pry.models.Cita>"--%>


<t:template>
    <h1>Inicio</h1>
    <div id="calendar"></div>
    <script>
        var dates = [
            <c:forEach var="cita" items="${citas}">
            {
                id: ${cita.id},
                title: "${cita.title}",
                description: "${cita.description}",
                start: "${cita.fechaYHoraDeInicio}",
                end: "${cita.fechaYHoraDeFin}",
                url: ""
            },
            </c:forEach>
        ];

        document.addEventListener('DOMContentLoaded', function () {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
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
        <a href="<c:url value='/Create'/>" class="material-button nuevo">Crear Nuevo</a>
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
                <td>${item.horas}</td>
                <td>${item.doctor.apellido}</td>
                <td>${item.paciente.apellido}</td>
                <td>
                    <a href="<c:url value='/Edit/${item.id}'/>" class="material-button">Editar</a> |
                    <a href="<c:url value='/Details/${item.id}'/>" class="material-button">Detalles</a> |
                    <a href="<c:url value='/Delete/${item.id}'/>" class="material-button">Eliminar</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</t:template>
