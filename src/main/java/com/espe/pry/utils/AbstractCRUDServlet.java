package com.espe.pry.utils;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public abstract class AbstractCRUDServlet<Model, Repository extends AbstractCRUDRepository<Model>> extends HttpServlet {


    protected Repository repository;

    public AbstractCRUDServlet(Repository repository) {
        this.repository = repository;
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String opcion = req.getParameter("opcion");
        if (opcion == null)
            opcion = "index";

        switch (opcion) {
            case "registro": {
                req.getRequestDispatcher(getEntityPath() + "/create.jsp").forward(req, resp);
                break;
            }
            case "eliminar": {
                Model model = repository.find(Long.parseLong(req.getParameter("id")));
                req.setAttribute(getEntityName(), model);
                req.getRequestDispatcher(getEntityPath() + "/delete.jsp").forward(req, resp);
                break;
            }
            case "editar": {
                //example url: http://localhost:8080/usuario?opcion=editar&id=1
                Model model = repository.find(Long.parseLong(req.getParameter("id")));
                req.setAttribute(getEntityName(), model);
                req.getRequestDispatcher(getEntityPath() + "/edit.jsp").forward(req, resp);
                break;
            }
            case "detalles": {
                Model model = repository.find(Long.parseLong(req.getParameter("id")));
                req.setAttribute(getEntityName(), model);
                req.getRequestDispatcher(getEntityPath() + "/details.jsp").forward(req, resp);
                break;
            }
            default: {
                List<Model> lista = repository.findAll();
                req.setAttribute(getEntityNamePlural(), lista);
                req.getRequestDispatcher(getEntityPath() + "/index.jsp").forward(req, resp);
                break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String method = req.getParameter("_method");
        if (method == null)
            method = "POST";

        switch (method) {
            case "PUT": {
                doPut(req, resp);
                break;
            }
            case "DELETE": {
                doDelete(req, resp);
                break;
            }
            default: {
                Model model = repository.parse(req);
                repository.save(model);
                resp.sendRedirect(req.getContextPath() + "/" + getEntityName() + "?opcion=index");
                break;
            }
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Model model = repository.parse(req);
        repository.edit(model);
        resp.sendRedirect(req.getContextPath() + "/" + getEntityName() + "?opcion=index");
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Model model = repository.find(Long.parseLong(req.getParameter("id")));
        repository.delete(model);
        resp.sendRedirect(req.getContextPath() + "/" + getEntityName() + "?opcion=index");
    }

    protected abstract String getEntityPath();

    protected abstract String getEntityName();

    protected abstract String getEntityNamePlural();

}
