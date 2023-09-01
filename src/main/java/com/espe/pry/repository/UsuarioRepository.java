package com.espe.pry.repository;

import com.espe.pry.models.Usuario;
import com.espe.pry.utils.AbstractCRUDRepository;
import jakarta.servlet.http.HttpServletRequest;

public class UsuarioRepository extends AbstractCRUDRepository<Usuario> {
    @Override
    public Usuario parse(HttpServletRequest request) {
        String id = request.getParameter("id");
        Usuario usuario = new Usuario();


        usuario.setId(id == null || id.isEmpty() ? null : Long.parseLong(id));
        usuario.setNombre(request.getParameter("nombre"));
        usuario.setApellido(request.getParameter("apellido"));
        usuario.setEmail(request.getParameter("email"));
        usuario.setPassword(request.getParameter("password"));

        return usuario;

    }
}
