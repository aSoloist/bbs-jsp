package com.bbs.dao;

import com.bbs.bean.Image;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ImageDao {
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
    
    public List<Image> getImages(int stickerId) {
        String sql = "select * from image where sticker_id = ?";
        List<Image> list = new ArrayList<>();
        Image image;
        try {
            PreparedStatement pstat = getConnection().prepareStatement(sql);
            pstat.setInt(1, stickerId);
            ResultSet resultSet = pstat.executeQuery();
            while (resultSet.next()) {
                image = new Image();
                image.setId(resultSet.getInt("id"));
                image.setPath(resultSet.getString("path"));
                image.setStickerId(resultSet.getInt("sticker_id"));
                list.add(image);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public int saveImage(Image image) {
        String sql = "insert into image (id, sticker_id, path) values (?, ?, ?)";
        int result = 0;
        try {
            PreparedStatement pstat = getConnection().prepareStatement(sql);
            pstat.setInt(1, image.getId());
            pstat.setInt(2, image.getStickerId());
            pstat.setString(3, image.getPath());
            result = pstat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    
    public int deleteImage(int id) {
        String sql = "delete from image where id = ?";
        int result = 0;
        try {
            PreparedStatement pstat = getConnection().prepareStatement(sql);
            pstat.setInt(1, id);
            result = pstat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
