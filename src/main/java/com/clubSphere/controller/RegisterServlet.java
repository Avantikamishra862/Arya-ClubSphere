package com.clubSphere.controller;

import com.clubSphere.dao.UserDAO;
import com.clubSphere.model.User;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    public void init() {
        userDAO = new UserDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String collegeId = request.getParameter("collegeId");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String course = request.getParameter("course");
        String year = request.getParameter("year");

        User user = new User();
        user.setName(name);
        user.setCollegeId(collegeId);
        user.setEmail(email);
        user.setPhone(phone);
        user.setPassword(password);
        user.setCourse(course);
        user.setYear(year);

        boolean success = userDAO.registerUser(user);

        if (success) {
            response.sendRedirect("login.jsp?msg=registered_successfully");
        } else {
            response.sendRedirect("register.jsp?error=Registration failed. Duplicate College ID or Email.");
        }
    }
}