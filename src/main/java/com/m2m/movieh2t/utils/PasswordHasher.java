package com.m2m.movieh2t.utils;

import org.mindrot.jbcrypt.BCrypt;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class PasswordHasher {
    public static String hashPassword(String password) {
        return BCrypt.hashpw(password,BCrypt.gensalt(12));
    }
    public static Boolean valuate(String password){
        return BCrypt.checkpw(password, hashPassword(password));
    }
}

