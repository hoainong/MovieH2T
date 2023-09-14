package com.m2m.movieh2t.service;

import com.m2m.movieh2t.entity.User;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;

public interface UserService {
    User findById(Integer id);
    User findByEmail(String email);

    List<User> findAll(boolean isActive);
    User login(String email, String password);

    User create(User user);
    User create(String email,String name);
    User create(String email,String name,String password) ;

    Boolean exist(String email);
}
