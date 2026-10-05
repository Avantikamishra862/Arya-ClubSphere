package com.clubSphere.controller;

import com.clubSphere.dao.UserDAO;
import com.clubSphere.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    @Override
    public void init() {
        userDAO = new UserDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String emailOrCollegeId = request.getParameter("emailOrCollegeId");
        String password = request.getParameter("password");

        User user = userDAO.loginUser(emailOrCollegeId, password);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("role", user.getRole());

            // Normalize role to Uppercase for case-insensitive matching
            String userRole = (user.getRole() != null) ? user.getRole().toUpperCase().trim() : "";

            switch (userRole) {
                case "ADMIN":
                    response.sendRedirect("jsp/admin-dashboard.jsp");
                    break;
                case "CLUB_HEAD":
    response.sendRedirect(request.getContextPath() + "/jsp/club-head-dashboard.jsp");
    break;
                case "CLUB_MEMBER":
                    response.sendRedirect("jsp/member-dashboard.jsp");
                    break;
                case "STUDENT":
                    response.sendRedirect("jsp/student-dashboard.jsp");
                    break;
                default:
                    response.sendRedirect("login.jsp?error=Invalid Role Assigned");
                    break;
            }
        } else {
            response.sendRedirect("login.jsp?error=Invalid Credentials");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }
}
