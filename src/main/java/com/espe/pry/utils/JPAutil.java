package com.espe.pry.utils;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JPAutil {
    private static EntityManager manager;
    private static final String PERSISTENCE_UNIT_NAME = "PERSISTENCE";

    public static EntityManager getEntityManager() {
        if (manager == null) {
            EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
            manager = factory.createEntityManager();
        }
        return manager;
    }


}
