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
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年mm月dd日 hh:mm:ss");
//        Date d = new Date(session.getCreationTime());
//        session.setAttribute("username","admin");
    %>
    <%--Session创建时间：<%=sdf.format(d)%><br>--%>
    Session的ID编号：<%=session.getId()%><br>
    从Session中获取用户名：<%=session.getAttribute("username")%><br>
    Session中保存的属性有：<%
        String[] name = session.getValueNames();
        for(int i = 0; i < name.length;i++){
            out.println(name[i]+"&nbsp;&nbsp;");
        }
    %><br>
</body>
</html>
