package com.bbs.servlet;

import com.bbs.bean.Image;
import com.bbs.bean.Sticker;
import com.bbs.dao.ImageDao;
import com.bbs.dao.StickerDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ShowStickerServlet extends HttpServlet {
    private ImageDao imageDao = new ImageDao();
    private StickerDao stickerDao = new StickerDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Sticker sticker = stickerDao.getStickerById(id);
        if (sticker != null) {
            List<Image> images = imageDao.getImages(id);
            request.setAttribute("sticker", sticker);
            request.setAttribute("images", images);
            request.getRequestDispatcher("/admin/sticker.jsp").forward(request, response);
        } else {
            response.getWriter().write("帖子不存在");
        }
    }
}
