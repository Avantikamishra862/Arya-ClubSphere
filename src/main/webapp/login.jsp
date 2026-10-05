<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - ClubSphere</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root { --primary-pink: #d81b60; --dark-pink: #ad1457; }
        body { background-color: #f8f9fa; }
        .login-card { max-width: 420px; width: 100%; border-radius: 12px; border: none; }
        .btn-pink { background-color: var(--primary-pink); color: white; border: none; }
        .btn-pink:hover { background-color: var(--dark-pink); color: white; }
        .text-pink { color: var(--primary-pink); }
    </style>
</head>
<body class="d-flex align-items-center justify-content-center min-vh-100">

    <div class="card login-card shadow-lg p-4">
        <div class="text-center mb-4">
            <h3 class="fw-bold text-pink">ClubSphere Login</h3>
            <p class="text-muted small">Enter your credentials to access your dashboard</p>
        </div>

        <%-- Error Alert Display --%>
        <% 
            String error = request.getParameter("error");
            if (error != null && !error.isEmpty()) { 
        %>
            <div class="alert alert-danger py-2 text-center" role="alert">
                <%= error %>
            </div>
        <% } %>

        <form action="LoginServlet" method="POST">
            <div class="mb-3">
                <label class="form-label font-weight-bold">Email or Enrollment ID</label>
                <input type="text" name="emailOrCollegeId" class="form-control" placeholder="e.g. student@aryacollege.com / 2026ARYA101" required>
            </div>

            <div class="mb-3">
                <label class="form-label font-weight-bold">Password</label>
                <input type="password" name="password" class="form-control" placeholder="••••••••" required>
            </div>

            <button type="submit" class="btn btn-pink w-100 py-2 fs-6 mt-2">Sign In</button>
        </form>

        <div class="text-center mt-4">
            <span class="text-muted small">Don't have an account? </span>
            <a href="register.jsp" class="text-pink fw-semibold small text-decoration-none">Register here</a>
        </div>
    </div>

</body>
</html>