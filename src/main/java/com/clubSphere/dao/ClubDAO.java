package com.clubSphere.dao;

import com.clubSphere.model.Club;
import com.clubSphere.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClubDAO {

    public List<Club> getAllActiveClubs() {
        List<Club> clubs = new ArrayList<>();
        String sql = "SELECT * FROM clubs WHERE status = 'ACTIVE' ORDER BY club_name ASC";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Club club = new Club();
                club.setClubId(rs.getInt("club_id"));
                club.setClubName(rs.getString("club_name"));
                club.setCategory(rs.getString("category"));
                club.setDescription(rs.getString("description"));
                club.setStatus(rs.getString("status"));
                clubs.add(club);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return clubs;
    }
}