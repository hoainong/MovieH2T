package com.m2m.movieh2t.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.api.client.googleapis.auth.oauth2.*;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.m2m.movieh2t.constant.GoogleConstant;
import com.m2m.movieh2t.constant.SessionAttr;
import com.m2m.movieh2t.entity.User;
import com.m2m.movieh2t.service.UserService;
import com.m2m.movieh2t.service.serviceImpl.UserServiceImpl;

@WebServlet("/google-login2")
public class LoginGoogle extends HttpServlet {
        private UserService service = new UserServiceImpl();
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            String code = request.getParameter("code");
            HttpSession session = request.getSession();
            if (code == null) {
                response.sendRedirect("/login-google");
            } else {
                // Sử dụng code để lấy access token từ Google
                GoogleTokenResponse tokenResponse = new GoogleAuthorizationCodeTokenRequest(
                        new NetHttpTransport(),
                        new JacksonFactory(),
                        GoogleConstant.CLIENT_ID,
                        GoogleConstant.CLIENT_SECRET,
                        code,
                        GoogleConstant.REDIRECT_URI
                ).execute();

                String accessToken = tokenResponse.getAccessToken();
                // Lấy thông tin người dùng từ Google
                GoogleIdToken idToken = tokenResponse.parseIdToken();
                GoogleIdToken.Payload payload = idToken.getPayload();
                String userId = payload.getSubject();
                String email = payload.getEmail();
                String password = Long.toHexString(System.currentTimeMillis());
                String fullName = (String) payload.get("name");
                if(service.exist(email)){
                    User user = service.findByEmail(email);
                    session.setAttribute(SessionAttr.CURRENT_USER,user);

                }else {
                    User user =  service.create(fullName,email,password);
                    session.setAttribute(SessionAttr.CURRENT_USER,user);
                }
                response.sendRedirect("/home");
            }

        }

}

