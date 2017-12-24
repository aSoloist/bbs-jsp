package com.bbs.bean;

import java.sql.Timestamp;

public class Sticker {
    private int id;
    private String title;
    private String content;
    private Timestamp create;
    private int userid;

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getCreate() {
        return create;
    }

    public void setCreate(Timestamp create) {
        this.create = create;
    }
}
