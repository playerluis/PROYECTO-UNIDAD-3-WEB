package com.espe.pry.controllers;

import com.espe.pry.models.Cita;
import com.espe.pry.repository.CitaRepository;
import com.espe.pry.utils.AbstractCRUDServlet;
import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "citaServlet", value = {"/cita"})
public class CitaServlet extends AbstractCRUDServlet<Cita, CitaRepository> {
    public CitaServlet() {
        super(new CitaRepository());
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
}
