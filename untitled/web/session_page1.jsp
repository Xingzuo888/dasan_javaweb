<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/10
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>session内置对象</h1>
    <hr>
    <%
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        Date d = new Date(session.getCreationTime());
        session.setAttribute("username","admin");
        session.setAttribute("password","123456");
        session.setAttribute("age",20);
//        session.setMaxInactiveInterval(10);//设置超时时间单位 秒
    %>
    Session创建时间：<%=sdf.format(d)%><br>
    Session的ID编号：<%=session.getId()%><br>
    从Session中获取用户名：<%=session.getAttribute("username")%><br>
    <%
        //session.invalidate();//销毁当前会话
    %>
    <a href="session_page2.jsp" target="_blank">跳转到session_page2</a>
</body>
</html>
