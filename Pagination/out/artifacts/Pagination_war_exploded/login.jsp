<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/13
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<String> list = (List<String>) request.getAttribute("info");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%if (list!=null){
    for (String s:list){%>
        <h2><%=s%></h2>
    <%}
}%>
<form action="/login" method="post">
    <h2>用户名：<input type="text" name="user"/></h2>
    <h2>密码：<input type="password"  name="pwd"/></h2>
    <input type="submit" value="登录">
</form>
</body>
</html>
