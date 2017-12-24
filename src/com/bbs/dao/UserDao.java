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
        String sql = "select * from user";
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

    public int saveUser(User model) {
        String sql = "insert into user (username, password) values (?, ?)";
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
        String sql = "update user set username = ?, password = ? where id = ?";
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
        String sql = "delete from user where id = ?";
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
        String sql = "select * from user where username = ?";
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
