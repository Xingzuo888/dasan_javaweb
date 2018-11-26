<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/31
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%=request.getSession().getAttribute("currentUser")%><br>
  This is my JSP page.<br>
  <button onclick="location.href='<%=request.getContextPath()%>/init.jsp'">Init</button>
  <button onclick="location.href='<%=request.getContextPath()%>/destory.jsp'">Destory</button>
  </body>
</html>
