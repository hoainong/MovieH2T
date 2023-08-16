package com.m2m.movieh2t.dao;

import com.m2m.movieh2t.entity.User;

import java.util.List;

public interface UserDao {
    User findById(Integer id);
    List<User> findAll(boolean isActive);
    User login(String email, String password);

    User create(User user);
}
