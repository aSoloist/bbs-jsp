package com.bbs.servlet;

import com.bbs.bean.Sticker;
import com.bbs.bean.User;
import com.bbs.dao.StickerDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddStickerServlet extends HttpServlet {
    private StickerDao stickerDao = new StickerDao();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title").trim();
        String content = request.getParameter("content").trim();
        Sticker sticker = new Sticker();
        User user = (User) request.getSession().getAttribute("user");
        sticker.setTitle(title);
        sticker.setUserid(user.getId());
        sticker.setContent(content);
        int result = stickerDao.saveSticker(sticker);
        if (result == 1) {
            response.getWriter().write("添加成功");
            response.setHeader("refresh", "3;url=show");
        } else {
            response.getWriter().write("添加失败");
            response.setHeader("refresh", "3;url=add-sticker.jsp");
        }
    }
}
