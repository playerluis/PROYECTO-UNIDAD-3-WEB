package com.espe.pry.controllers;

import com.espe.pry.models.Usuario;
import com.espe.pry.repository.UsuarioRepository;
import com.espe.pry.utils.AbstractCRUDServlet;
import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "usuarioServlet", value = {"/usuario"})
public class UsuarioServlet extends AbstractCRUDServlet<Usuario, UsuarioRepository> {
    public UsuarioServlet() {
        super(new UsuarioRepository());
    }

    @Override
    protected String getEntityPath() {
        return "entidades/usuario";
    }

    @Override
    protected String getEntityName() {
        return "usuario";
    }

    @Override
    protected String getEntityNamePlural() {
        return "usuarios";
    }
}
