package com.m2m.movieh2t.service.serviceImpl;

import com.m2m.movieh2t.constant.EmailMsg;
import com.m2m.movieh2t.entity.User;
import com.m2m.movieh2t.service.EmailService;
import com.m2m.movieh2t.service.UserService;
import com.m2m.movieh2t.utils.EmailUtility;
import com.m2m.movieh2t.utils.PasswordHasher;

import javax.servlet.ServletContext;
import java.security.SecureRandom;

public class EmailServiceImpl implements EmailService {
    UserService service = new UserServiceImpl();
    @Override
    public void sendMail(User recipient) {


        try {
            String newPass = generateRandomPassword(6);
            service.update(recipient,newPass);
            EmailUtility.sendEmail( EmailMsg.EMAIL, EmailMsg.PASSWORD
                    , recipient.getEmail(), EmailMsg.SubjectForgotPass,
                    newPass);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
    public static String generateRandomPassword(int length) {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+";
        SecureRandom random = new SecureRandom();
        StringBuilder password = new StringBuilder();

        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            password.append(characters.charAt(index));
        }

        return password.toString();
    }
}
