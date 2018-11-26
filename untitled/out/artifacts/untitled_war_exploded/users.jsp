<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/9
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title></title>
</head>
<body>
    <h1>用户信息</h1>
    <hr>
    <%
        request.setCharacterEncoding("UTF-8");
        String user = "";
        String paw = "";
        Cookie[] cookies = request.getCookies();
        if (cookies !=null && cookies.length > 0){
            for(Cookie c:cookies){
                if (c.getName().equals("username")){
                    user = URLDecoder.decode(c.getValue(),"UTF-8");
                }
                if (c.getName().equals("password")){
                    paw = URLDecoder.decode(c.getValue(),"UTF-8");
                }
            }
        }
    %>
    <br><br><br>
    用户名：<%=user%><br>
    密码：<%=paw%><br>
</body>
</html>