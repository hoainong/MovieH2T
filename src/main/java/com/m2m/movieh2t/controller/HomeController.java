package com.m2m.movieh2t.controller;

import com.m2m.movieh2t.service.MovieSevice;
import com.m2m.movieh2t.service.serviceImpl.MovieSeviceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet(urlPatterns = {"","/home"})
public class HomeController extends HttpServlet {
    private String message;
    private MovieSevice sevice = new MovieSeviceImpl();

    public void init() {
        message = "Wellcome MovieH2T";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("movies",sevice.findAll());
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/user/home.jsp");
        dispatcher.forward(request,response);
    }


    public void destroy() {
    }
}