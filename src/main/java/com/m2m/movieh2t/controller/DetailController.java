package com.m2m.movieh2t.controller;

import com.m2m.movieh2t.entity.Movie;
import com.m2m.movieh2t.service.MovieSevice;
import com.m2m.movieh2t.service.serviceImpl.MovieSeviceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet({"/phimdangchieu/*", "/phimsapchieu/*"})
public class DetailController extends HttpServlet {
    private MovieSevice sevice = new MovieSeviceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        String pathInfo = req.getPathInfo();
        Integer id = Integer.parseInt(pathInfo.substring(1));
        Movie movie = sevice.findOne(id);
        if (uri.contains("/phimdangchieu")) {
            doPhimdangchieu(req, resp, movie);
        } else if (uri.contains("/phimsapchieu")) {
            doPhimsapchieu(req, resp, movie);
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    private void doPhimsapchieu(HttpServletRequest req, HttpServletResponse resp, Movie movie) throws ServletException, IOException {
        if (movie != null) {
            req.setAttribute("movie", movie);
            RequestDispatcher dis = req.getRequestDispatcher("/view/user/detail.jsp");
            dis.forward(req, resp);
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    private void doPhimdangchieu(HttpServletRequest req, HttpServletResponse resp, Movie movie) throws ServletException, IOException {
        if (movie != null) {
            req.setAttribute("movie", movie);
            RequestDispatcher dis = req.getRequestDispatcher("/view/user/detail.jsp");
            dis.forward(req, resp);
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}
