/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import models.LoginDAO;
import dal.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author leducphi
 */
public class loginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LoginDAO dao = new LoginDAO();
        try {
            String txtUsername = req.getParameter("txtUsername");
            String txtPassword = req.getParameter("txtPassword");
            User acc = dao.getAccount(txtUsername, txtPassword);
            if (acc != null) {
                req.getSession().setAttribute("AccSession", acc);
                req.setAttribute("msg", "Login successful!");
                req.getRequestDispatcher("/index.jsp").forward(req, resp);

            } else {
                req.setAttribute("msg", "Login Failed");
                req.getRequestDispatcher("/index.jsp").forward(req, resp);
            }
        } catch (ServletException | IOException e) {
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        } catch (ServletException | IOException e) {
        }
    }
}
