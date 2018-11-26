<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/16
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>application内置对象</h1>
    <%
        application.setAttribute("city","北京");
        application.setAttribute("email","123@126.com");
    %>
    所在的城市：<%=application.getAttribute("city")%><br>
    application中的属性有：<%
        Enumeration enumeration = application.getAttributeNames();
        while (enumeration.hasMoreElements()){
            out.println(enumeration.nextElement() + "&nbsp;&nbsp;");
        }
    %><br>
    JSP(server)引擎名及版本号：<%=application.getServerInfo()%><br>
</body>
</html>
