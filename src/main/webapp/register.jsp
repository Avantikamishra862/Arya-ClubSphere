<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration - ClubSphere</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root { --primary-pink: #d81b60; }
        .btn-pink { background-color: var(--primary-pink); color: white; }
        .btn-pink:hover { background-color: #ad1457; color: white; }
    </style>
</head>
<body class="bg-light py-5">
    <div class="container" style="max-width: 550px;">
        <div class="card shadow border-0 p-4">
            <h3 class="fw-bold text-center text-danger mb-3">Student Registration</h3>
            
            <% if(request.getParameter("error") != null) { %>
                <div class="alert alert-danger py-2 small text-center"><%= request.getParameter("error") %></div>
            <% } %>

            <form action="RegisterServlet" method="post">
                <div class="mb-3">
                    <label class="form-label font-weight-bold">Full Name</label>
                    <input type="text" name="name" class="form-control" placeholder="John Doe" required>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="form-label font-weight-bold">College / Enrollment ID</label>
                        <input type="text" name="collegeId" class="form-control" placeholder="2026ARYA101" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label class="form-label font-weight-bold">Phone Number</label>
                        <input type="text" name="phone" class="form-control" placeholder="9876543210" required>
                    </div>
                </div>
                <div class="mb-3">
                    <label class="form-label font-weight-bold">Email Address</label>
                    <input type="email" name="email" class="form-control" placeholder="student@aryacollege.in" required>
                </div>
                <div class="mb-3">
                    <label class="form-label font-weight-bold">Password</label>
                    <input type="password" name="password" class="form-control" placeholder="••••••••" required>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="form-label font-weight-bold">Course / Branch</label>
                        <input type="text" name="course" class="form-control" placeholder="B.Tech CSE" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label class="form-label font-weight-bold">Year / Semester</label>
                        <input type="text" name="year" class="form-control" placeholder="3rd Year" required>
                    </div>
                </div>
                <button type="submit" class="btn btn-pink w-100 py-2 mt-2">Create Account</button>
            </form>
            <div class="text-center mt-3">
                <span class="small text-muted">Already have an account? <a href="login.jsp" class="text-danger">Login here</a></span>
            </div>
        </div>
    </div>
</body>
</html>