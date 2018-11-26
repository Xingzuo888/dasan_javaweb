<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/17
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="person" class="com.wgh.Person" scope="page">
    <jsp:setProperty name="person" property="*"/>
    <jsp:setProperty name="person" property="address" param="add"/>
</jsp:useBean>
<html>
<head>
    <title>Title</title>
    <style>
        ul{
            list-style: none;
            padding: 5px;
        }
        li{
            padding: 5px;
        }
    </style>
</head>
<body>
    <ul>
        <li>姓 名：<jsp:getProperty property="name" name="person" /></li>
        <li>年 龄：<jsp:getProperty property="age" name="person" /></li>
        <li>性 别：<jsp:getProperty property="sex" name="person" /></li>
        <li>住 址：<jsp:getProperty property="address" name="person" /></li>
    </ul>
</body>
</html>
