package com.espe.pry.repository;

import com.espe.pry.models.Doctor;
import com.espe.pry.models.Especialidad;
import com.espe.pry.utils.AbstractCRUDRepository;
import jakarta.servlet.http.HttpServletRequest;

public class DoctorRepository extends AbstractCRUDRepository<Doctor> {
    @Override
    public Doctor parse(HttpServletRequest request) {
        String id = request.getParameter("id");
        Doctor doctor = new Doctor();

        doctor.setId(id == null || id.isEmpty() ? null : Long.parseLong(id));

        Especialidad especialidad = manager.find(Especialidad.class, Integer.parseInt(request.getParameter("especialidad")));

        doctor.setNombre(request.getParameter("nombre"));
        doctor.setApellido(request.getParameter("apellido"));
        doctor.setEspecialidad(especialidad);
        doctor.setCedula(request.getParameter("cedula"));

        return doctor;
    }
}
