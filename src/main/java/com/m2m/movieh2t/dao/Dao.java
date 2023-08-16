package com.m2m.movieh2t.dao;

import com.m2m.movieh2t.utils.JpaUtil;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public abstract class Dao<T> {
    public static final EntityManager em = JpaUtil.getEntityManager();

    @SuppressWarnings("deprecation")
    @Override
    protected void finalize() throws Throwable {
        em.close();
        super.finalize();
    }

    public T findById(Class<T> clazz, Integer id) {
        return em.find(clazz, id);
    }

    public List<T> findAll(Class<T> clazz, boolean existIsActive) {
        String entityNameString = clazz.getSimpleName();
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT o FROM ").append(entityNameString)
                .append(" o");
        if (existIsActive) {
            sql.append(" WHERE isActive = 1");
        }
        TypedQuery<T> query = em.createQuery(sql.toString(), clazz);
        return query.getResultList();
    }


    public T findOne(Class<T> clazz, String sql, Object ... params) {
        TypedQuery<T> query = em.createQuery(sql,clazz);
        for(int i = 0; i < params.length; i++){
            query.setParameter(i,params[i]);
        }
        List<T> result = query.getResultList();
        if(result.isEmpty()){
            return null;
        }
        return result.get(0);
    }
    public T create(T entity){
        try {
            em.getTransaction().begin();
            em.persist(entity);
            em.getTransaction().commit();
            return entity;
        }catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException();
        }
    }
    public T upload(T entity) {
        try {
            em.getTransaction().begin();
            em.merge(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException();
        }
    }
    public void delete(T entity) {
        try {
            em.getTransaction().begin();
            em.remove(entity);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

}
