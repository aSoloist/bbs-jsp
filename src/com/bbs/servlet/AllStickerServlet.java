package com.bbs.servlet;

import com.bbs.bean.Sticker;
import com.bbs.dao.StickerDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class AllStickerServlet extends HttpServlet {
    private StickerDao stickerDao = new StickerDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String p = request.getParameter("p");
        List<Sticker> stickers = stickerDao.getStick();
        request.getSession().removeAttribute("stickers");
        request.getSession().setAttribute("stickers", stickers);
        if (p != null && p.equals("all")) {
            response.sendRedirect("stickers.jsp");
        } else {
            response.sendRedirect("index.jsp");
        }
    }
}
