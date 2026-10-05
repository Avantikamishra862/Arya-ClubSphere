<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arya College - ClubSphere</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root { --primary-pink: #d81b60; --dark-pink: #ad1457; }
        .hero-section { background: linear-gradient(135deg, #fff5f8 0%, #ffffff 100%); min-height: 85vh; }
        .btn-pink { background-color: var(--primary-pink); color: white; border: none; }
        .btn-pink:hover { background-color: var(--dark-pink); color: white; }
        .btn-outline-pink { border: 2px solid var(--primary-pink); color: var(--primary-pink); background: transparent; }
        .btn-outline-pink:hover { background-color: var(--primary-pink); color: white; }
        .text-pink { color: var(--primary-pink); }
    </style>
</head>
<body>
    <!-- Header / Navbar -->
    <nav class="navbar navbar-light bg-white border-bottom shadow-sm px-4">
        <span class="navbar-brand fw-bold fs-4 text-pink">ARYA COLLEGE</span>
        <div>
            <a href="login.jsp?role=student" class="btn btn-outline-pink px-3 me-2">Student Login</a>
            <a href="login.jsp?role=admin" class="btn btn-dark px-3">Admin Portal</a>
        </div>
    </nav>

    <!-- Hero Content -->
    <div class="hero-section d-flex align-items-center justify-content-center text-center px-3">
        <div>
            <h5 class="text-uppercase tracking-wide text-secondary mb-2">College Club & Activity Management System</h5>
            <h1 class="display-3 fw-bold mb-2">ClubSphere</h1>
            <p class="fs-4 text-pink fw-semibold mb-4">Connect • Participate • Grow</p>
            <p class="text-muted max-w-lg mx-auto mb-4" style="max-width: 600px;">
                Centralized platform to discover college clubs, explore Saturday events, register digitally via QR codes, and track activity participation effortlessly.
            </p>
            
            <!-- Dual Portal Access Buttons -->
            <div class="d-flex justify-content-center gap-3 mt-4">
                <a href="register.jsp" class="btn btn-pink btn-lg px-4 py-3 fs-6 shadow-sm">Student Registration</a>
                <a href="login.jsp?role=admin" class="btn btn-outline-dark btn-lg px-4 py-3 fs-6 shadow-sm">Admin Access</a>
            </div>
        </div>
    </div>
</body>
</html>