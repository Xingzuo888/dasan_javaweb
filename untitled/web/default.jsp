<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/19
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.util.*" %>
<%@ page import="static sun.misc.MessageUtils.out" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>用户名和密码错误！</h2>
    <%="你好啊"%>

    <%
        out.println("你好啊");
        out.flush();
        //out.clear();//这里会抛出异常
        out.clearBuffer();//这里不会抛出异常
        out.println("你好啊");
    %>
    <br>
    缓冲区大小：<%=out.getBufferSize()%>byte<br>
    缓冲区剩余大小：<%=out.getRemaining()%>byte<br>
    是否自动清空缓冲区：<%=out.isAutoFlush()%>
</body>
</html>
