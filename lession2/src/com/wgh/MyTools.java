package com.wgh;

import java.io.UnsupportedEncodingException;

public class MyTools {
    public static String toChinese(String str){
        if (str == null)
            str = "";
        try{
            str = new String(str.getBytes("iso-8859-1"),"utf-8");
        } catch (UnsupportedEncodingException e) {
            str = "";
            e.printStackTrace();
        }
        return str;
    }
    public static String changeStr(String str){
        String news = "";
        news = str.replace("<","&lt");
        news = news.replace(">","&gt");
        return news;
    }
}
