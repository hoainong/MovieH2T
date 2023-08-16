package com.m2m.movieh2t.controller;

import com.m2m.movieh2t.constant.AccountMessage;
import com.m2m.movieh2t.constant.SessionAttr;
import com.m2m.movieh2t.entity.User;
import com.m2m.movieh2t.service.UserService;
import com.m2m.movieh2t.service.serviceImpl.UserServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/login", "/signup", "/forget-password", "/logout"})
public class AccountController extends HttpServlet {

    private UserService service = new UserServiceImpl();

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String uri = req.getRequestURI();
        switch (uri) {
            case "/login":
                getLogin(req, resp);
                break;
            case "/signup":
                getSignUp(req, resp);
                break;
            case "/forget-password":
                getForget(req, resp);
                break;
            case "/logout":
                logOut(session, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String uri = req.getRequestURI();
        switch (uri) {
            case "/login":
                postLogin(session, req, resp);
                break;
            case "/signup":
                postSignUp(session, req, resp);
                break;
            case "/forget-password":
                postForget(req, resp);
                break;
        }
    }

    /*DOPOST - BIGIN*/
    private void postLogin(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        User user = service.login(email, password);
        if (user != null) {
            session.setAttribute(SessionAttr.CURRENT_USER, user);
            resp.sendRedirect("/home");
        } else {
            req.setAttribute("error", AccountMessage.ERROR_LOGIN);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/view/user/login.jsp");
            dispatcher.forward(req, resp);
        }
    }

    private void postSignUp(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        if(email.isBlank() || name.isBlank() || password.isBlank()){
            req.setAttribute("error",AccountMessage.ERROR_SIGNUP);
            req.getRequestDispatcher("/view/user/signup.jsp").forward(req,resp);
        }else {
            if(service.exist(email)){
                req.setAttribute("error",AccountMessage.ERROR_SIGNUP_EXISTEMAIL);
                req.getRequestDispatcher("/view/user/signup.jsp").forward(req,resp);
            }else {
                User user = new User(name,email,password,true);
                service.create(user);
                session.setAttribute(SessionAttr.CURRENT_USER,user);
                resp.sendRedirect("/home");
            }
        }
    }

    private void postForget(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    /*DOPOST - END*/

    /*DOGET - BIGIN*/
    private void getLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/view/user/login.jsp");
        dispatcher.forward(req, resp);
    }

    private void getSignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/view/user/signup.jsp");
        dispatcher.forward(req, resp);
    }

    private void getForget(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/view/user/forget-password.jsp");
        dispatcher.forward(req, resp);
    }

    private void logOut(HttpSession session, HttpServletResponse resp) throws IOException {
        session.removeAttribute(SessionAttr.CURRENT_USER);
        resp.sendRedirect("/home");
    }
    /*DOGET - END*/

    @Override
    public void destroy() {
        super.destroy();
    }
}
