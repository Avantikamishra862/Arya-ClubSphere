<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Club Member Dashboard - ClubSphere</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary px-4">
        <a class="navbar-brand fw-bold" href="#">Arya ClubSphere | Member Portal</a>
        <div class="ms-auto d-flex align-items-center text-white">
            <span class="me-3">Welcome, <strong>${sessionScope.user.name}</strong></span>
            <a href="${pageContext.request.contextPath}/LogoutServlet" class="btn btn-outline-light btn-sm">Logout</a>
        </div>
    </nav>

    <!-- Main Container -->
    <div class="container mt-4">
        <h2 class="mb-4">My Club Dashboard</h2>
        <div class="row g-3">
            <div class="col-md-4">
                <div class="card bg-info text-white p-3 shadow-sm">
                    <h5>Joined Clubs</h5>
                    <h3 class="fw-bold">1</h3>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-success text-white p-3 shadow-sm">
                    <h5>Upcoming Events</h5>
                    <h3 class="fw-bold">2</h3>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-warning text-dark p-3 shadow-sm">
                    <h5>My Tasks / Duty</h5>
                    <h3 class="fw-bold">0 Pending</h3>
                </div>
            </div>
        </div>
    </div>
</body>
</html>