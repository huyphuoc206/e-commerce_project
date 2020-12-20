package com.ecostore.model;

public class FeedBackModel extends AbstractModel {
    private UserModel userId;
    private String content;
    private int status;

    public FeedBackModel() {
    }

    public UserModel getUserId() {
        return userId;
    }

    public void setUserId(UserModel userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
