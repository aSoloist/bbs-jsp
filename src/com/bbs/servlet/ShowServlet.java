package com.bbs.servlet;

import com.bbs.bean.Sticker;
import com.bbs.bean.User;
import com.bbs.dao.StickerDao;
import com.bbs.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Soloist on 2017/12/25 12:37
 */
public class ShowServlet extends HttpServlet {
    private UserDao userDao = new UserDao();
    private StickerDao stickerDao = new StickerDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> users = userDao.getUser();
        List<Sticker> stickers = stickerDao.getStick();
        request.getSession().setAttribute("users", users);
        request.getSession().setAttribute("stickers", stickers);
        response.sendRedirect("index.jsp");
    }
}
