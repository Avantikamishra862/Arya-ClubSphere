package com.clubSphere.model;

import java.sql.Timestamp;

public class User {
    private int userId;
    private String name;
    private String collegeId;
    private String email;
    private String phone;
    private String password;
    private String role; // ADMIN, CLUB_HEAD, CLUB_MEMBER, STUDENT
    private String course;
    private String year;
    private String status;
    private Timestamp createdAt;

    public User() {}

    // Getters and Setters
    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getCollegeId() { return collegeId; }
    public void setCollegeId(String collegeId) { this.collegeId = collegeId; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }

    public String getCourse() { return course; }
    public void setCourse(String course) { this.course = course; }

    public String getYear() { return year; }
    public void setYear(String year) { this.year = year; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public Timestamp getCreatedAt() { return createdAt; }
    public void setCreatedAt(Timestamp createdAt) { this.createdAt = createdAt; }
}