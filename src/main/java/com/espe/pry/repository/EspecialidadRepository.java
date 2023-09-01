package com.espe.pry.repository;

import com.espe.pry.models.Especialidad;
import com.espe.pry.utils.AbstractCRUDRepository;
import jakarta.servlet.http.HttpServletRequest;

public class EspecialidadRepository extends AbstractCRUDRepository<Especialidad> {
    @Override
    public Especialidad parse(HttpServletRequest request) {
        String id = request.getParameter("id");
        Especialidad especialidad = new Especialidad();

        especialidad.setId(id == null || id.isEmpty() ? null : Long.parseLong(id));

        especialidad.setNombre(request.getParameter("nombre"));

        return especialidad;

    }
}
