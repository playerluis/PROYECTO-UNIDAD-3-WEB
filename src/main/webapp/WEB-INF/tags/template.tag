<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="Layout de la pagina" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title> SCM - Sistema de Citas Médicas &copy; 2023</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/site.css"/>
    <script src="https://kit.fontawesome.com/c903d303d4.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar-scheduler@6.1.8/index.global.min.js"></script>
</head>
<body class="d-flex min-vh-100 h-100">
<aside class="d-flex flex-column flex-shrink-0 p-3 text-white bg-success"
       style="
            width: 280px;
            border-right: rgba(173,181,189,0.3) 1px solid;
            position: fixed;
            height: 100%;
       ">

    <a href="${pageContext.request.contextPath}/index.jsp"
       class="d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto text-decoration-none text-white">
        <div class="mx-2 fs-2">
            <i class="fa-solid fa-hospital"></i>
        </div>
        <span class="fs-1 fw-bold">SCM</span>
    </a>
    <hr>
    <ul class="nav nav-pills flex-column mb-auto">
        <li class="nav-item">
            <a href="${pageContext.request.contextPath}/index.jsp" class="nav-link text-white">
                <i class="fa-solid fa-house"></i>
                Inicio
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/cita?opcion=index" class="nav-link text-white">
                <i class="fa-solid fa-calendar"></i>
                Citas
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/paciente?opcion=index" class="nav-link text-white">
                <i class="fa-solid fa-user"></i>
                Pacientes
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/doctor?opcion=index" class="nav-link text-white">
                <i class="fa-solid fa-user-md"></i>
                Doctores
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/usuario?opcion=index" class="nav-link text-white">
                <i class="fa-solid fa-user"></i>
                Usuarios
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/especialidad" class="nav-link text-white">
                <i class="fa-solid fa-user-md"></i>
                Especialidades
            </a>
        </li>
    </ul>
    <hr>
    <div class="dropdown">
        <a href="#"
           class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"
           id="dropdownUser1"
           data-bs-toggle="dropdown"
           aria-expanded="false">
            <strong>
                Invitado
            </strong>
        </a>
        <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser1">
            <li>
                <a class="dropdown-item" href="#">Ajustes</a>
            </li>
            <li>
                <a class="dropdown-item" href="#">Perfil</a>
            </li>
            <li>
                <hr class="dropdown-divider">
            </li>
            <li>
                <!-- -->
            </li>
        </ul>
    </div>
</aside>

<main class="container-fluid" style="width: calc(100% - 280px); margin-left: 280px">
    <div class="row mt-3">
        <div class="col d-flex justify-content-center">
            <h1 class="fw-bold">Sistema de Citas Médicas</h1>
        </div>
        <hr>
    </div>
    <div>

        <jsp:doBody/>

    </div>

    <footer class="border-top footer text-muted">
        <div class="container">
            &copy; 2023 - SCM - <a href="${pageContext.request.contextPath}/Home/Privacy">Privacy</a>
        </div>
    </footer>
</main>

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</body>
</html>
