package com.bbs.servlet;

import com.bbs.bean.Sticker;
import com.bbs.dao.StickerDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class SearchServlet extends HttpServlet {
    private StickerDao stickerDao = new StickerDao();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = request.getParameter("message");
        List<Sticker> stickers = stickerDao.searchSticker(message);
        request.getSession().removeAttribute("stickers");
        request.getSession().setAttribute("stickers", stickers);
        response.sendRedirect("stickers.jsp");
    }
}
