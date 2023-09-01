package com.espe.pry.controllers;

import com.espe.pry.models.Cita;
import com.espe.pry.repository.CitaRepository;
import com.espe.pry.repository.DoctorRepository;
import com.espe.pry.repository.PacienteRepository;
import com.espe.pry.utils.AbstractCRUDServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "citaServlet", value = {"/cita"})
public class CitaServlet extends AbstractCRUDServlet<Cita, CitaRepository> {
    public CitaServlet() {
        super(new CitaRepository());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DoctorRepository doctorRepository = new DoctorRepository();
        PacienteRepository pacienteRepository = new PacienteRepository();

        req.setAttribute("doctores", doctorRepository.findAll());
        req.setAttribute("pacientes", pacienteRepository.findAll());

        super.doGet(req, resp);
    }

    @Override
    protected String getEntityPath() {
        return "entidades/cita";
    }

    @Override
    protected String getEntityName() {
        return "cita";
    }

    @Override
    protected String getEntityNamePlural() {
        return "citas";
    }

    @Override
    protected List<String> validate(Cita cita) {
        List<Cita> citas = repository.findAll();

        for (Cita c : citas) {
            if (c.getDoctor().getId().equals(cita.getDoctor().getId()) && c.getFecha().equals(cita.getFecha())) {
                if (cita.getHoraDeInicio().isAfter(c.getHoraDeInicio()) && cita.getHoraDeInicio().isBefore(c.getHoraDeInicio().plusHours(c.getDuracion()))) {
                    return List.of("El doctor ya tiene una cita en ese rango de horas");
                }
            }

            if (c.getPaciente().getId().equals(cita.getPaciente().getId()) && c.getFecha().equals(cita.getFecha())) {
                if (cita.getHoraDeInicio().isAfter(c.getHoraDeInicio()) && cita.getHoraDeInicio().isBefore(c.getHoraDeInicio().plusHours(c.getDuracion()))) {
                    return List.of("El paciente ya tiene una cita en ese rango de horas");
                }
            }
        }

        return List.of();

    }
}
