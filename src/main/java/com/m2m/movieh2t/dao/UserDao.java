package com.m2m.movieh2t.dao;

import com.m2m.movieh2t.entity.User;

import java.util.List;

public interface UserDao {
    User findById(Integer id);
    User findByEmail(String email);
    List<User> findAll(boolean isActive);

    User create(User user);
}
