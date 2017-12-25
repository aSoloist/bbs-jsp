package com.bbs.dao;

import com.bbs.bean.Sticker;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StickerDao {
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
    
    public List<Sticker> getStick() {
        String sql = "select * from sticker";
        List<Sticker> list = new ArrayList<>();
        Sticker sticker;
        try {
            PreparedStatement pstat = getConnection().prepareStatement(sql);
            ResultSet resultSet = pstat.executeQuery();
            while (resultSet.next()) {
                sticker = new Sticker();
                sticker.setId(resultSet.getInt("id"));
                sticker.setTitle(resultSet.getString("title"));
                sticker.setContent(resultSet.getString("content"));
                sticker.setCreate(resultSet.getTimestamp("create"));
                sticker.setUserid(resultSet.getInt("user_id"));
                list.add(sticker);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public Sticker getStickerById(int id) {
        String sql = "select * from sticker where id = ?";
        Sticker sticker = null;
        try {
            PreparedStatement pstat = getConnection().prepareStatement(sql);
            pstat.setInt(1, id);
            ResultSet resultSet = pstat.executeQuery();
            if (resultSet.next()) {
                sticker = new Sticker();
                sticker.setId(resultSet.getInt("id"));
                sticker.setTitle(resultSet.getString("title"));
                sticker.setContent(resultSet.getString("content"));
                sticker.setUserid(resultSet.getInt("user_id"));
                sticker.setCreate(resultSet.getTimestamp("create"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sticker;
    }
    
    public int saveSticker(Sticker model) {
        String sql = "insert into sticker (title, content, create, user_id) values (?, ?, ?, ?)";
        int m = 0;
        try {
            PreparedStatement pstat = getConnection().prepareStatement(sql);
            pstat.setString(1, model.getTitle());
            pstat.setString(2, model.getContent());
            pstat.setTimestamp(3, model.getCreate());
            pstat.setInt(4, model.getUserid());
            m = pstat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return m;
    }
    
    public int updateSticker(Sticker model) {
        String sql = "update sticker set title = ?, content = ? where id = ?";
        int m = 0;
        try {
            PreparedStatement pstat = getConnection().prepareStatement(sql);
            pstat.setString(1, model.getTitle());
            pstat.setString(2, model.getContent());
            pstat.setInt(3, model.getId());
            m = pstat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return m;
    }
    
    public int deleteSticker(int id) {
        String sql = "delete from sticker where id = ?";
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
    
}