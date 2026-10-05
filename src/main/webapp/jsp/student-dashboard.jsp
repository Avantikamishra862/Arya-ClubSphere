<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.clubSphere.model.User, com.clubSphere.dao.ClubDAO, com.clubSphere.model.Club, java.util.List" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("../login.jsp?error=Please Login First");
        return;
    }
    
    ClubDAO clubDAO = new ClubDAO();
    List<Club> clubList = clubDAO.getAllActiveClubs();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Clubs - Arya ClubSphere</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <style>
        :root { --primary-pink: #d81b60; }
        .bg-pink { background-color: var(--primary-pink); }
        .text-pink { color: var(--primary-pink); }
        .club-card {
            transition: transform 0.2s ease, shadow 0.2s ease;
            border-radius: 12px;
            border: 1px solid #eaeaea;
        }
        .club-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.08) !important;
            border-color: var(--primary-pink);
        }
        .club-icon-wrapper {
            width: 70px;
            height: 70px;
            border-radius: 50%;
            background-color: #fdf2f5;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
            color: var(--primary-pink);
            margin: 0 auto 12px auto;
        }
    </style>
</head>
<body class="bg-light">

    <!-- Top Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white border-bottom px-4 sticky-top shadow-sm">
        <span class="navbar-brand fw-bold text-pink">ARYA COLLEGE</span>
        <div class="ms-auto d-flex align-items-center gap-3">
            <span class="fw-medium">Welcome, <%= user.getName() %></span>
            <a href="../LogoutServlet" class="btn btn-outline-danger btn-sm">Logout</a>
        </div>
    </nav>

    <!-- Header Banner -->
    <div class="bg-white py-5 text-center border-bottom mb-4">
        <div class="container">
            <h1 class="fw-bold display-5">Student Clubs</h1>
            <p class="text-muted fs-5">Explore 26+ clubs, discover your passion and be a part of something amazing.</p>
        </div>
    </div>

    <!-- Clubs Grid Container -->
    <div class="container pb-5">
        <div class="row g-4">
            <% 
                if (clubList != null && !clubList.isEmpty()) {
                    for (Club club : clubList) {
                        String iconName = "bi-people-fill";
                        String cName = club.getClubName().toLowerCase();
                        
                        if (cName.contains("kart")) iconName = "bi-speedometer2";
                        else if (cName.contains("green") || cName.contains("eco")) iconName = "bi-tree-fill";
                        else if (cName.contains("intelverse") || cName.contains("ai")) iconName = "bi-cpu-fill";
                        else if (cName.contains("skill")) iconName = "bi-lightbulb-fill";
                        else if (cName.contains("music")) iconName = "bi-music-note-beamed";
                        else if (cName.contains("dance")) iconName = "bi-activity";
                        else if (cName.contains("robot")) iconName = "bi-robot";
                        else if (cName.contains("chess")) iconName = "bi-controller";
                        else if (cName.contains("social")) iconName = "bi-heart-fill";
                        else if (cName.contains("code") || cName.contains("cipher")) iconName = "bi-code-slash";
                        else if (cName.contains("football")) iconName = "bi-dribbble";
                        else if (cName.contains("cricket") || cName.contains("badminton") || cName.contains("tennis") || cName.contains("basketball")) iconName = "bi-trophy-fill";
                        else if (cName.contains("e-sports") || cName.contains("sports")) iconName = "bi-gamepad";
                        else if (cName.contains("movie")) iconName = "bi-film";
                        else if (cName.contains("photo")) iconName = "bi-camera-fill";
                        else if (cName.contains("drama")) iconName = "bi-masks";
                        else if (cName.contains("gdg") || cName.contains("hackathon")) iconName = "bi-terminal-fill";
                        else if (cName.contains("literature")) iconName = "bi-book-fill";
                        else if (cName.contains("science")) iconName = "bi-award-fill";
                        else if (cName.contains("drone")) iconName = "bi-airplane-fill";
                        else if (cName.contains("automation")) iconName = "bi-gear-wide-connected";
            %>
            <div class="col-6 col-md-4 col-lg-3">
                <div class="card club-card h-100 p-3 text-center bg-white shadow-sm">
                    <div class="club-icon-wrapper">
                        <i class="bi <%= iconName %>"></i>
                    </div>
                    <h6 class="fw-bold mb-1 text-dark"><%= club.getClubName() %></h6>
                    <span class="badge bg-light text-secondary border mb-2 w-auto mx-auto"><%= club.getCategory() %></span>
                    <p class="small text-muted mb-3 flex-grow-1"><%= club.getDescription() %></p>
                    <button class="btn btn-outline-danger btn-sm w-100 fw-semibold">Join Club</button>
                </div>
            </div>
            <% 
                    }
                } else {
            %>
            <div class="col-12 text-center py-5">
                <p class="text-muted fs-5">No clubs found in database. Please verify SQL data.</p>
            </div>
            <% } %>
        </div>
    </div>

</body>
</html>