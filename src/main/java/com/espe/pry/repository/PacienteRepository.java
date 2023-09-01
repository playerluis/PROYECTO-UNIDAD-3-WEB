package com.espe.pry.repository;

import com.espe.pry.models.Paciente;
import com.espe.pry.utils.AbstractCRUDRepository;
import jakarta.servlet.http.HttpServletRequest;

import java.time.LocalDate;

public class PacienteRepository extends AbstractCRUDRepository<Paciente> {
    @Override
    public Paciente parse(HttpServletRequest request) {
        String id = request.getParameter("id");
        Paciente paciente = new Paciente();

        paciente.setId(id == null || id.isEmpty() ? null : Long.parseLong(id));

        paciente.setNombre(request.getParameter("nombre"));
        paciente.setApellido(request.getParameter("apellido"));
        paciente.setFechaDeNacimiento(LocalDate.parse(request.getParameter("fechaDeNacimiento")));
        paciente.setDireccion(request.getParameter("direccion"));

        if (id != null)
            paciente.setFechaDeRegistro(find(Long.parseLong(id)).getFechaDeRegistro());

        return paciente;

    }
}
