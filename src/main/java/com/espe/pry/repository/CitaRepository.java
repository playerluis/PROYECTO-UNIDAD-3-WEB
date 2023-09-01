package com.espe.pry.repository;

import com.espe.pry.models.Cita;
import com.espe.pry.models.Doctor;
import com.espe.pry.models.Paciente;
import com.espe.pry.utils.AbstractCRUDRepository;
import jakarta.servlet.http.HttpServletRequest;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

public class CitaRepository extends AbstractCRUDRepository<Cita> {
    @Override
    public Cita parse(HttpServletRequest request) {
        String id = request.getParameter("id");
        Cita cita = new Cita();

        cita.setId(id == null || id.isEmpty() ? null : Long.parseLong(id));

        Long pacienteId = Long.parseLong(request.getParameter("pacienteId"));
        Long doctorId = Long.parseLong(request.getParameter("doctorId"));

        Paciente paciente = manager.find(Paciente.class, pacienteId);
        Doctor doctor = manager.find(Doctor.class, doctorId);

        cita.setPaciente(paciente);
        cita.setDoctor(doctor);

        cita.setFecha(LocalDate.parse(request.getParameter("fecha")));
        cita.setHoraDeInicio(LocalTime.parse(request.getParameter("horaDeInicio")));
        cita.setDuracion(Integer.parseInt(request.getParameter("duracion")));
        cita.setDescripcion(request.getParameter("descripcion"));


        return cita;
    }
}
