package com.wgh;

public class MessageBean {
    private String author;					//留言者
    private String title;					//留言标题
    private String content;

    public MessageBean() {
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTitle() {
        return MyTools.changeStr(title);
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
}
