<%@ page import="entity.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/31
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("requestName","requestValue");
    request.getSession().setAttribute("sessionName","sessionValue");
    request.getSession().getServletContext().setAttribute("contextName","contextValue");

    request.getSession().setAttribute("currentUser",new entity.User());
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
这是初始化值的界面<br>
<button onclick="location.href='<%=request.getContextPath()%>/init.jsp'">Init</button>
<button onclick="location.href='<%=request.getContextPath()%>/destory.jsp'">Destory</button>
</body>
</html>
