package com.m2m.movieh2t.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;


@WebServlet(urlPatterns = "/showtime")
public class ShowTimeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id-movie");
        LocalDate currentDate = LocalDate.now();
        LocalDate[] schedule = new LocalDate[30];
        for(int i = 0 ; i < schedule.length; i++){
            schedule[i] = currentDate.plusDays(i);
        }
        req.setAttribute("schedule",schedule);
        req.getRequestDispatcher("/view/user/showtime.jsp").forward(req,resp);
    }
}
