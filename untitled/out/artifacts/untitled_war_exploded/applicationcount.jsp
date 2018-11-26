<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/16
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>应用application对象实现网页计数器</title>
</head>
<body>
    <%
        int number = 0;
        if(application.getAttribute("number") == null){
            number = 1;
        }else{
            number = Integer.parseInt(application.getAttribute("number").toString());
            number = number + 1;
        }
        out.println("您是第" + number + "位访问者！");
        application.setAttribute("number",number);
    %>
</body>
</html>
