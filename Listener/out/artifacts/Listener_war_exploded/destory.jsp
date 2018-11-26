<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/31
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.removeAttribute("requestName");
    request.getSession().removeAttribute("sessionName");
    request.getSession().getServletContext().removeAttribute("contextName");
    request.getSession().removeAttribute("currentUser");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
这是销毁界面<BR>
<button onclick="location.href='<%=request.getContextPath()%>/init.jsp'">Init</button>
<button onclick="location.href='<%=request.getContextPath()%>/destory.jsp'">Destory</button>
</body>
</html>
