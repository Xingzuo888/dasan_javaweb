<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/19
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String user=request.getAttribute("user").toString();
%>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            text-align: center;
            width: 1024px;
            height: 1000px;
        }
        #one{
            width:1024px;
            height: 100px;
            text-align: center;
            background-color: coral;
        }

    </style>
</head>
<body>
<div id="one">欢迎<%=user%>进入学生管理系统</div>

</body>
</html>
