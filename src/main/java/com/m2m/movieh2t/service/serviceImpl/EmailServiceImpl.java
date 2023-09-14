package com.m2m.movieh2t.service.serviceImpl;

import com.m2m.movieh2t.constant.EmailMsg;
import com.m2m.movieh2t.entity.User;
import com.m2m.movieh2t.service.EmailService;
import com.m2m.movieh2t.utils.EmailUtility;

import javax.servlet.ServletContext;

public class EmailServiceImpl implements EmailService {
    @Override
    public void sendMail(ServletContext context, User recipient) {
        String host = context.getInitParameter("host");
        String port = context.getInitParameter("port");
        String user = context.getInitParameter("user");
        String pass = context.getInitParameter("pass");

        try {
            String newPass = String.valueOf(Math.random() * ((999999-100000)+1)+100000);
            EmailUtility.sendEmail(host, port, user, pass, recipient.getEmail(), EmailMsg.SubjectForgotPass,
                    newPass);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
