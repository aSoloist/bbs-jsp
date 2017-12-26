package com.bbs.servlet;

import com.bbs.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteUserServlet extends HttpServlet {
    private UserDao userDao = new UserDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sid = request.getParameter("id").trim();
        int id = Integer.parseInt(sid);
        int result = userDao.deleteUser(id);
        if (result == 1) {
            response.getWriter().write("删除成功");
            response.setHeader("refresh", "3;url=show");
        } else {
            response.getWriter().write("删除失败");
            response.setHeader("refresh", "3;url=users.jsp");
        }
    }
}
