<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.clubSphere.model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"ADMIN".equals(user.getRole())) {
        response.sendRedirect("../login.jsp?error=Unauthorized Access");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - ClubSphere</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <nav class="navbar navbar-dark bg-dark px-4">
        <span class="navbar-brand fw-bold">Arya ClubSphere | Admin Panel</span>
        <div>
            <span class="text-white me-3">Welcome, <%= user.getName() %></span>
            <a href="../LogoutServlet" class="btn btn-outline-light btn-sm">Logout</a>
        </div>
    </nav>
    <div class="container mt-4">
        <h2>Admin Overview</h2>
        <div class="row mt-4">
            <div class="col-md-3">
                <div class="card bg-primary text-white p-3">
                    <h5>Total Clubs</h5>
                    <h3>15</h3>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card bg-warning text-dark p-3">
                    <h5>Pending Approvals</h5>
                    <h3>0</h3>
                </div>
            </div>
        </div>
    </div>
</body>
</html>