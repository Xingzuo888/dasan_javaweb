<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/16
  Time: 8:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>录入员工信息页面</title>
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
<form action="register.jsp" method="post">
  <ul>
    <li>姓名：<input type="text" name="name"></li>
    <li>年龄：<input type="text" name="age"></li>
    <li>性别：<input type="text" name="sex"></li>
    <li>住址：<input type="text" name="add" size="35"></li>
    <li><input type="submit" value="添 加"></li>
  </ul>
</form>
</body>
</html>