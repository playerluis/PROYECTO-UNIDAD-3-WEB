package com.espe.pry.utils;

import jakarta.persistence.EntityManager;
import jakarta.servlet.http.HttpServletRequest;

import java.lang.reflect.ParameterizedType;
import java.util.List;

//model desbe ser una clase
public abstract class AbstractCRUDRepository<Model> {
    protected final EntityManager manager;

    public AbstractCRUDRepository(){
        manager = JPAutil.getEntityManager();
    }

    public void save(Model model) {
        manager.getTransaction().begin();
        manager.persist(model);
        manager.getTransaction().commit();
    }

    public void edit(Model model) {
        manager.getTransaction().begin();
        manager.merge(model);
        manager.getTransaction().commit();
    }

    public void delete(Model model) {
        manager.getTransaction().begin();
        manager.remove(model);
        manager.getTransaction().commit();
    }

    public Model find(Long id) {
        return manager.find(getModelClass(), id);
    }

    public List<Model> findAll() {
        String className = manager.getMetamodel().entity(getModelClass()).getName();
        return manager.createQuery("FROM " + className, getModelClass()).getResultList();
    }


    @SuppressWarnings("unchecked")
    private Class<Model> getModelClass() {
        return (Class<Model>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }

    public abstract Model parse(HttpServletRequest request);
}
