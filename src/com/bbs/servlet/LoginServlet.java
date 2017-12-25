package com.bbs.servlet;

import com.bbs.bean.User;
import com.bbs.dao.UserDao;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String username = req.getParameter("username").trim();
        String password = req.getParameter("password").trim();
        
        User user;
        user = UserDao.getByUsername(username);
        
        if (user == null) {
            throw new RuntimeException("用户不存在");
        } else if (!user.getPassword().equals(password)) {
            throw new RuntimeException("密码错误");
        } else {
            req.getSession().setAttribute("user", user);
            resp.sendRedirect("/admin/getIndex");
        }
    }
}
