package com.bbs.util;

import java.sql.*;

public class DBUtil {

    private static Connection conn = null;
    private static PreparedStatement ps = null;

    private static Connection getConn() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbs", "root", "ly1511");
        } catch (ClassNotFoundException e) {
            System.out.println("数据库驱动加载失败");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("获取连接失败");
        }

        return conn;
    }
    
    public static PreparedStatement getPreparedStatement(String sql){
        conn = getConn();
        try {
            ps = conn.prepareStatement(sql);
        } catch (SQLException e) {
            System.out.println("SQL语句错误");
        }

        return ps;
    }
    
    public static void closeUpdateRes (PreparedStatement ps){
        if (ps != null){
            try {
                conn = ps.getConnection();
                ps.close();
                if (conn != null){
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    public static void closeQueryRes (ResultSet rs){
        if (rs != null) {
            try {
                Statement stmt = rs.getStatement();
                if (stmt != null) {
                    conn = stmt.getConnection();
                    stmt.close();
                    if (conn != null) {
                        conn.close();
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
