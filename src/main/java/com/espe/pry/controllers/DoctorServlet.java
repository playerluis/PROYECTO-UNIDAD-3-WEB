package com.espe.pry.controllers;

import com.espe.pry.models.Doctor;
import com.espe.pry.models.Especialidad;
import com.espe.pry.repository.DoctorRepository;
import com.espe.pry.repository.EspecialidadRepository;
import com.espe.pry.utils.AbstractCRUDServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "doctorServlet", value = {"/doctor"})
public class DoctorServlet extends AbstractCRUDServlet<Doctor, DoctorRepository> {
    public DoctorServlet() {
        super(new DoctorRepository());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Especialidad> especialidads = new EspecialidadRepository().findAll();
        req.setAttribute("especialidades", especialidads);

        super.doGet(req, resp);
    }

    @Override
    protected String getEntityPath() {
        return "entidades/doctor";
    }

    @Override
    protected String getEntityName() {
        return "doctor";
    }

    @Override
    protected String getEntityNamePlural() {
        return "doctores";
    }
}
