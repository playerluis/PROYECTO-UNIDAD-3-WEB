package com.espe.pry.controllers;

import com.espe.pry.models.Doctor;
import com.espe.pry.repository.DoctorRepository;
import com.espe.pry.utils.AbstractCRUDServlet;
import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "doctorServlet", value = {"/doctor"})
public class DoctorServlet extends AbstractCRUDServlet<Doctor, DoctorRepository> {
    public DoctorServlet() {
        super(new DoctorRepository());
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
