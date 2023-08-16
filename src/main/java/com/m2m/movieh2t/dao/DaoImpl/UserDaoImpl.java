package com.m2m.movieh2t.dao.DaoImpl;

import com.m2m.movieh2t.dao.Dao;
import com.m2m.movieh2t.dao.UserDao;
import com.m2m.movieh2t.entity.User;
import java.util.List;

public class UserDaoImpl extends Dao<User> implements UserDao {
    @Override
    public User findById(Integer id) {
        return super.findById(User.class,id);
    }

    @Override
    public List<User> findAll(boolean isActive) {
        return super.findAll(User.class,isActive);
    }

    @Override
    public User login(String email, String password) {
        String sql = "SELECT o FROM User o WHERE o.email = ?0 AND o.password = ?1";
        return super.findOne(User.class,sql,email,password);
    }

    @Override
    public User create(User user) {
        return super.create(user);
    }
}
