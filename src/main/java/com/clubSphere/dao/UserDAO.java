package com.clubSphere.dao;

import com.clubSphere.model.User;
import com.clubSphere.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    // Student Registration
    public boolean registerUser(User user) {
        String sql = "INSERT INTO users (name, college_id, email, phone, password, role, course, year, status) VALUES (?, ?, ?, ?, ?, 'STUDENT', ?, ?, 'ACTIVE')";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setString(1, user.getName());
            ps.setString(2, user.getCollegeId());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPhone());
            ps.setString(5, user.getPassword());
            ps.setString(6, user.getCourse());
            ps.setString(7, user.getYear());
            
            int rowsInserted = ps.executeUpdate();
            return rowsInserted > 0;
            
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Login Verification (Works for all roles: ADMIN, CLUB_HEAD, CLUB_MEMBER, STUDENT)
    public User loginUser(String emailOrCollegeId, String password) {
        String sql = "SELECT * FROM users WHERE (email = ? OR college_id = ?) AND password = ? AND status = 'ACTIVE'";
        User user = null;
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setString(1, emailOrCollegeId);
            ps.setString(2, emailOrCollegeId);
            ps.setString(3, password);
            
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setName(rs.getString("name"));
                user.setCollegeId(rs.getString("college_id"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setRole(rs.getString("role"));
                user.setCourse(rs.getString("course"));
                user.setYear(rs.getString("year"));
                user.setStatus(rs.getString("status"));
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return user;
    }
}