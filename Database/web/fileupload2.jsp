<%@ page import="demo.FileUploadTool" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/7
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = pageContext.getServletContext().getRealPath("/");
    FileUploadTool tool = new FileUploadTool(request,5*1024*1024,path+"uploadTemp");
    String username = tool.getParameter("username");
    String age = tool.getParameter("age");
    String[] inst = tool.getParameterValues("inst");
    List<String> filenames = tool.saveFiles(path+"upload");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>姓名：<%=username%></h1>
<h1>年龄：<%=age%></h1>
<h1>爱好：</h1>
<%
    for (String s: inst){
        %>
        <h2><%=s%></h2>
        <%
    }
%>
<h1>图片：</h1>
<%
    for (String s:filenames){
        %>
        <img src="upload/<%=s%>"/>
        <%
    }
%>
</body>
</html>
