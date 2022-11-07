/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import dal.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import models.assignDAO;

/**
 *
 * @author leducphi
 */
public class assignController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("AccSession");
        int id = Integer.parseInt(req.getParameter("id"));
        Paper paper = new assignDAO().getPaperByID(id);
        ArrayList<Paper_Author> listPA = new assignDAO().getPaperAuthorByID(id);
        if (user != null) {
            req.getSession().setAttribute("paper", paper);
            req.getSession().setAttribute("listPA", listPA);
            req.getRequestDispatcher("assign.jsp").forward(req, resp);
        } else {
            resp.getWriter().println("Access denied!");
        }

    }

}
