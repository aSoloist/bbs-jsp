package com.bbs.servlet;

import com.bbs.bean.Image;
import com.bbs.bean.Sticker;
import com.bbs.dao.ImageDao;
import com.bbs.dao.StickerDao;
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Soloist on 2017/12/26 21:45
 */
public class UploadServlet extends HttpServlet {
    private ImageDao imageDao = new ImageDao();
    private StickerDao stickerDao = new StickerDao();


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SmartUpload smartUpload = new SmartUpload();
        smartUpload.initialize(this.getServletConfig(), req, resp);
        smartUpload.setAllowedFilesList("JPG,jpg,JPEG,jpeg,PNG,png");
        smartUpload.setMaxFileSize(1024 * 1024 * 3);
        try {
            smartUpload.upload();
            String sid = smartUpload.getRequest().getParameter("id");
            int id = Integer.parseInt(sid);
            Sticker sticker = stickerDao.getStickerById(id);
            for (int i = 0; i < smartUpload.getFiles().getCount(); i++) {
                File file = smartUpload.getFiles().getFile(i);
                if (!file.isMissing()) {
                    String path = "images/" + sticker.getTitle() + i + "." + file.getFileExt();
                    String realPath = "admin/" + path;
                    Image image = new Image();
                    image.setStickerId(id);
                    image.setPath(path);
                    file.saveAs(realPath, File.SAVEAS_VIRTUAL);
                    int result = imageDao.saveImage(image);
                    if (result == 1) {
                        resp.getWriter().write("第" + (i + 1) + "张图片上传成功<br/>");
                    } else {
                        resp.getWriter().write("第" + (i + 1) + "张图片上传失败<br/>");
                    }
                } else {
                    resp.getWriter().write("上传的文件不能为空<br/>");
                }
            }
            resp.setHeader("refresh", "3;url=stickers.jsp");
        } catch (SmartUploadException e) {
            e.printStackTrace();
        }
    }
}