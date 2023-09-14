package com.m2m.movieh2t.service.serviceImpl;

import com.m2m.movieh2t.dao.DaoImpl.UserDaoImpl;
import com.m2m.movieh2t.dao.UserDao;
import com.m2m.movieh2t.entity.User;
import com.m2m.movieh2t.service.UserService;
import com.m2m.movieh2t.utils.PasswordHasher;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;

public class UserServiceImpl implements UserService {
    private UserDao dao;

    public UserServiceImpl() {
        dao = new UserDaoImpl();
    }

    @Override
    public User findById(Integer id) {
        return dao.findById(id);
    }

    @Override
    public User findByEmail(String email) {
        return dao.findByEmail(email);
    }

    @Override
    public List<User> findAll(boolean isActive) {
        return dao.findAll(isActive);
    }

    @Override
    public User login(String email, String password) {
        if(PasswordHasher.valuate(password)){
            return dao.findByEmail(email);
        }
        return null;
    }

    @Override
    public User create(User user) {
        return dao.create(user);
    }

    @Override
    public User create(String email, String name) {
        User user = new User(email,name,true);
        return dao.create(user);
    }

    @Override
    public User create(String email, String name, String password) {
        User user = new User(email,name,PasswordHasher.hashPassword(password));
        return dao.create(user);
    }

    @Override
    public Boolean exist(String email) {
        List<User> userLst = dao.findAll(true);
        for(User user : userLst){
            if(user.getEmail().equals(email)){
                return true;
            }
        }
        return false;
    }
}
