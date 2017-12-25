package com.bbs.servlet;

import com.bbs.bean.User;
import com.bbs.dao.UserDao;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    private UserDao userDao = new UserDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username").trim();
        String password = request.getParameter("password").trim();
        
        User user;
        user = userDao.getByUsername(username);
        
        if (user == null) {
            response.getWriter().write("用户不存在");
            response.setHeader("refresh", "3;url=login.jsp");
        } else if (!user.getPassword().equals(password)) {
            response.getWriter().write("密码错误");
            response.setHeader("refresh", "3;url=login.jsp");
        } else {
            request.getSession().setAttribute("user", user);
            response.sendRedirect("/admin/show");
        }
    }
}
