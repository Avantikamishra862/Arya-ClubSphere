<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Club Head Dashboard - Arya ClubSphere</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-light">

    <!-- Top Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-4 shadow-sm">
        <a class="navbar-brand fw-bold text-primary" href="#">Arya ClubSphere <span class="fs-6 text-white-50">| Club Head Portal</span></a>
        <div class="ms-auto d-flex align-items-center text-white">
            <span class="me-3"><i class="fa-solid fa-user-circle me-1"></i> Welcome, <strong>${sessionScope.user.name != null ? sessionScope.user.name : "Club Head"}</strong></span>
            <a href="${pageContext.request.contextPath}/LogoutServlet" class="btn btn-outline-danger btn-sm"><i class="fa-solid fa-right-from-bracket me-1"></i> Logout</a>
        </div>
    </nav>

    <!-- Main Container -->
    <div class="container my-4">
        <!-- Welcome Header -->
        <div class="d-flex justify-content-between align-items-center mb-4">
            <div>
                <h2 class="fw-bold mb-1">Club Lead Dashboard</h2>
                <p class="text-muted mb-0">Manage your club events, member requests, and active members.</p>
            </div>
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createEventModal">
                <i class="fa-solid fa-plus me-1"></i> Create New Event
            </button>
        </div>

        <!-- Metrics Overview Cards -->
        <div class="row g-3 mb-4">
            <div class="col-md-4">
                <div class="card border-0 shadow-sm bg-primary text-white p-3">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h6 class="text-white-50 text-uppercase mb-1">Total Members</h6>
                            <h2 class="fw-bold mb-0">42</h2>
                        </div>
                        <i class="fa-solid fa-users fa-2x opacity-50"></i>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card border-0 shadow-sm bg-success text-white p-3">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h6 class="text-white-50 text-uppercase mb-1">Active Events</h6>
                            <h2 class="fw-bold mb-0">3</h2>
                        </div>
                        <i class="fa-solid fa-calendar-check fa-2x opacity-50"></i>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card border-0 shadow-sm bg-warning text-dark p-3">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h6 class="text-dark-50 text-uppercase mb-1">Pending Requests</h6>
                            <h2 class="fw-bold mb-0">5</h2>
                        </div>
                        <i class="fa-solid fa-user-clock fa-2x opacity-50"></i>
                    </div>
                </div>
            </div>
        </div>

        <!-- Content Tables Row -->
        <div class="row g-4">
            <!-- Pending Applications Table -->
            <div class="col-lg-6">
                <div class="card border-0 shadow-sm h-100">
                    <div class="card-header bg-white py-3">
                        <h5 class="fw-bold mb-0 text-dark"><i class="fa-solid fa-user-plus text-warning me-2"></i> Pending Member Requests</h5>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-hover align-middle mb-0">
                                <thead class="table-light">
                                    <tr>
                                        <th>Student Name</th>
                                        <th>Course</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Rohan Sharma</td>
                                        <td>B.Tech CS (3rd Yr)</td>
                                        <td>
                                            <button class="btn btn-sm btn-success me-1"><i class="fa-solid fa-check"></i></button>
                                            <button class="btn btn-sm btn-danger"><i class="fa-solid fa-xmark"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Priya Verma</td>
                                        <td>BCA (2nd Yr)</td>
                                        <td>
                                            <button class="btn btn-sm btn-success me-1"><i class="fa-solid fa-check"></i></button>
                                            <button class="btn btn-sm btn-danger"><i class="fa-solid fa-xmark"></i></button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Recent/Upcoming Events -->
            <div class="col-lg-6">
                <div class="card border-0 shadow-sm h-100">
                    <div class="card-header bg-white py-3">
                        <h5 class="fw-bold mb-0 text-dark"><i class="fa-solid fa-calendar-days text-primary me-2"></i> Managed Events</h5>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-hover align-middle mb-0">
                                <thead class="table-light">
                                    <tr>
                                        <th>Event Name</th>
                                        <th>Date</th>
                                        <th>Registrations</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>CodeRush Hackathon</td>
                                        <td>28 Sept 2026</td>
                                        <td><span class="badge bg-info text-dark">54 Registered</span></td>
                                    </tr>
                                    <tr>
                                        <td>Web Dev Workshop</td>
                                        <td>05 Oct 2026</td>
                                        <td><span class="badge bg-info text-dark">30 Registered</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Create Event Modal -->
    <div class="modal fade" id="createEventModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title fw-bold">Publish New Event</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="${pageContext.request.contextPath}/EventServlet" method="POST">
                    <div class="modal-body">
                        <div class="mb-3">
                            <label class="form-label">Event Title</label>
                            <input type="text" name="eventTitle" class="form-control" placeholder="e.g. Annual Hackathon" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Event Date</label>
                            <input type="date" name="eventDate" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Venue</label>
                            <input type="text" name="venue" class="form-control" placeholder="e.g. Seminar Hall A" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Description</label>
                            <textarea name="description" class="form-control" rows="3" placeholder="Brief about event..."></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary">Publish Event</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>