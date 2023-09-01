<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:template>
  <a href="hello-servlet"></a>
  <h1 class="text-center"><i class="fa-solid fa-hospital my-5 fs-1"></i><br>Bienvenido</h1>
  <div class="d-flex justify-content-center align-items-center mt-5">
    <div class="text-end me-5">
        <p style="font-size: 36px; font-family: 'Trebuchet MS'; font-weight: bold; color: #007bff;">
            <span style="padding: 5px;">¡Cuidando vidas con pasión y excelencia!</span>
        </p>
    </div>
    <div class="ms-5">
        <img src="https://img.freepik.com/foto-gratis/doctor-pensando-sobre-fondo-blanco-aislado_1368-5828.jpg?w=2000" alt="Imagen del hospital" width="500" height="500">
    </div>
</div>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <img src="https://cdn-icons-png.flaticon.com/512/1572/1572132.png" class="card-img-top mt-3" alt="Imagen 1" width="100">
                    <div class="card-body">
                        <h5 class="card-title text-center">Agendar Cita</h5>
                        <button class="btn btn-primary">Ir</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="https://cdn-icons-png.flaticon.com/512/1430/1430402.png" class="card-img-top mt-3" alt="Imagen 2" width="100">
                    <div class="card-body">
                        <h5 class="card-title text-center">Agregar Paciente</h5>
                        <button class="btn btn-primary">Ir</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="https://cdn-icons-png.flaticon.com/512/3481/3481061.png" class="card-img-top mt-3" alt="Imagen 3" width="100">
                    <div class="card-body">
                        <h5 class="card-title text-center">Agregar Doctor</h5>
                        <button class="btn btn-primary">Ir</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="https://dharmamedicinaregenerativa.com.ar/wp-content/uploads/2023/03/2618588-1.png" class="card-img-top mt-3" alt="Imagen 4" width="100">
                    <div class="card-body">
                        <h5 class="card-title text-center">Agregar Especialidad</h5>
                        <button class="btn btn-primary">Ir</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</t:template>
