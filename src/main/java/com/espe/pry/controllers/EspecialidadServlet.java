package com.espe.pry.controllers;

import com.espe.pry.models.Especialidad;
import com.espe.pry.repository.EspecialidadRepository;
import com.espe.pry.utils.AbstractCRUDServlet;
import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "especialidadServlet", value = {"/especialidad"})
public class EspecialidadServlet extends AbstractCRUDServlet<Especialidad, EspecialidadRepository> {
    public EspecialidadServlet() {
        super(new EspecialidadRepository());
    }

    @Override
    protected String getEntityPath() {
        return "entidades/especialidad";
    }

    @Override
    protected String getEntityName() {
        return "especialidad";
    }

    @Override
    protected String getEntityNamePlural() {
        return "especialidades";
    }
}
