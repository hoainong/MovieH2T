package com.m2m.movieh2t.service.serviceImpl;

import com.m2m.movieh2t.dao.DaoImpl.UserDaoImpl;
import com.m2m.movieh2t.dao.UserDao;
import com.m2m.movieh2t.entity.User;
import com.m2m.movieh2t.service.UserService;

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
    public List<User> findAll(boolean isActive) {
        return dao.findAll(isActive);
    }

    @Override
    public User login(String email, String password) {
        return dao.login(email,password);
    }

    @Override
    public User create(User user) {
        return dao.create(user);
    }

    @Override
    public Boolean exist(String email) {
        List<User> userLst = dao.findAll(false);
        for(User user : userLst){
            if(user.getEmail().equals(email)){
                return true;
            }
        }
        return false;
    }
}
