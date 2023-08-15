package com.m2m.movieh2t.utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaUtil {
    private static EntityManagerFactory factory;
    static public EntityManager getEntityManager(){
        if(factory == null || !factory.isOpen()){
            factory = Persistence.createEntityManagerFactory("movieh2t");
        }
        return factory.createEntityManager();
    }
    static public void shutdown(){
        if(factory != null && factory.isOpen()){
            factory.close();
        }
        factory = null;
    }
}
