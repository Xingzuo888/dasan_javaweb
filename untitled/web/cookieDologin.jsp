<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/10
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>登录成功</h1>
    <hr>
    <br><br><br>
    <%
        request.setCharacterEncoding("UTF-8");
        String[] isUserCookie = request.getParameterValues("isUserCookie");
        if (isUserCookie != null && isUserCookie.length > 0){
            String username = URLEncoder.encode(request.getParameter("username"),"UTF-8");
            String password = URLEncoder.encode(request.getParameter("password"),"UTF-8");
            Cookie usernameCookie = new Cookie("username",username);
            Cookie passwordCookie = new Cookie("password",password);
//            usernameCookie.setMaxAge(60*60);
//            passwordCookie.setMaxAge(60*60);
            response.addCookie(usernameCookie);
            response.addCookie(passwordCookie);
        }else{
            Cookie[] cookies = request.getCookies();
            if (cookies !=null && cookies.length > 0){
                for(Cookie c:cookies){
                    if (c.getName().equals("username") || c.getName().equals("password")){
                        c.setMaxAge(0);
                        response.addCookie(c);
                    }
                }
            }
        }
    %>
    <a href="users.jsp" target="_blank">查看用户信息</a>
</body>
</html>
