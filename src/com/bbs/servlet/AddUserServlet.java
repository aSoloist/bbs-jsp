package com.bbs.servlet;

import com.bbs.bean.User;
import com.bbs.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddUserServlet extends HttpServlet {
    private UserDao userDao = new UserDao();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        if (userDao.isUserExist(username)) {
            response.getWriter().write("用户名已存在");
            response.setHeader("refresh", "3;url=user.jsp");
        } else {
            int result = userDao.saveUser(user);
            if (result == 1) {
                response.getWriter().write("添加成功");
                response.setHeader("refresh", "3;url=show");
            } else {
                response.getWriter().write("添加失败");
                response.setHeader("refresh", "3;url=user.jsp");
            }
        }
    }
}
