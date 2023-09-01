package com.espe.pry.controllers;

import com.espe.pry.models.Paciente;
import com.espe.pry.repository.PacienteRepository;
import com.espe.pry.utils.AbstractCRUDServlet;
import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "pacienteServlet", value = {"/paciente"})
public class PacienteServlet extends AbstractCRUDServlet<Paciente, PacienteRepository> {
    public PacienteServlet() {
        super(new PacienteRepository());
    }

    @Override
    protected String getEntityPath() {
        return "entidades/paciente";
    }

    @Override
    protected String getEntityName() {
        return "paciente";
    }

    @Override
    protected String getEntityNamePlural() {
        return "pacientes";
    }
}
