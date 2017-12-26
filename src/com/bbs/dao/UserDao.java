package com.bbs.dao;

import com.bbs.bean.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class UserDao {
    private Connection connection = null;

    private Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbs", "root", "ly1511");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return connection;
    }

    public List<User> getUser() {
        String sql = "SELECT * FROM user";
        PreparedStatement pstat;
        List<User> list = new ArrayList<>();
        User user;
        try {
            pstat = getConnection().prepareStatement(sql);
            ResultSet resultSet = pstat.executeQuery();
            while (resultSet.next()) {
                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                list.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public User getByUsername(String username) {
        String sql = "SELECT * FROM user WHERE username = ?";
        User user = null;
        try {
            PreparedStatement pstat = getConnection().prepareStatement(sql);
            pstat.setString(1, username);
            ResultSet resultSet = pstat.executeQuery();
            if (resultSet.next()) {
                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public int saveUser(User model) {
        String sql = "INSERT INTO user (username, password) VALUES (?, ?)";
        int m = 0;
        try {
            PreparedStatement pstat = getConnection().prepareStatement(sql);
            pstat.setString(1, model.getUsername());
            pstat.setString(2, model.getPassword());
            m = pstat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return m;
    }

    public int updateUser(User model) {
        String sql = "UPDATE user SET username = ?, password = ? WHERE id = ?";
        int m = 0;
        try {
            PreparedStatement pstat = getConnection().prepareStatement(sql);
            pstat.setString(1, model.getUsername());
            pstat.setString(2, model.getPassword());
            pstat.setInt(3, model.getId());
            m = pstat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return m;
    }

    public int deleteUser(int id) {
        String sql = "DELETE FROM user WHERE id = ?";
        int m = 0;
        try {
            PreparedStatement pstat = getConnection().prepareStatement(sql);
            pstat.setInt(1, id);
            m = pstat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return m;
    }

    public boolean isUserExist(String username) {
        String sql = "SELECT * FROM user WHERE username = ?";
        try {
            PreparedStatement pstat = getConnection().prepareStatement(sql);
            pstat.setString(1, username);
            ResultSet resultSet = pstat.executeQuery();
            return resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }
}
