<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/6
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="fileupload2.jsp" method="post" enctype="multipart/form-data">
   姓名：<input type="text" name="username"/><br>
    年龄：<input type="text" name="age"/><br>
    爱好：<input type="checkbox" name="inst" value="book">看书
    <input type="checkbox" name="inst" value="shopping">购物
    <input type="checkbox" name="inst" value="fishing">钓鱼<br>
    图片1：<input type="file" name="pic1"><br>
    图片2：<input type="file" name="pic2"><br>
    图片3：<input type="file" name="pic3"><br>
    <input type="submit" value="submit"><br>
</form>
</body>
</html>
