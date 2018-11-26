<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/17
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.wgh.MyTools" %>
<jsp:useBean id="messageBean" class="com.wgh.MessageBean" scope="request"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<ul>
    <!-- 获取留言者后进行转码操作 -->
    <li>
        留 &nbsp;言 &nbsp;者：<%=MyTools.toChinese(messageBean.getAuthor()) %>
    </li>
    <!-- 获取留言标题后进行转码操作 -->
    <li>留言标题：<%=MyTools.toChinese(messageBean.getTitle()) %></li>
    <!-- 获取留言内容后进行转码操作 -->
    <li>
        留言内容：<textarea rows="6" cols="30" readonly>
<%=MyTools.toChinese(messageBean.getContent()) %></textarea>
    </li>
    <li><a href="liuyan.jsp">继续留言</a></li>
</ul>

</body>
</html>
