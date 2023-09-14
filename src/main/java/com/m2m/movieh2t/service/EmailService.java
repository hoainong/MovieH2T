package com.m2m.movieh2t.service;

import com.m2m.movieh2t.entity.User;

import javax.servlet.ServletContext;

public interface EmailService {
    void sendMail(ServletContext context, User recipient);
}
