<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/9
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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

<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>用户登录</h1>
    <hr>
    <form name="loginForm" action="cookieDologin.jsp" method="post">
        <table>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username" value="<%=user%>"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password" value="<%=paw%>"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="checkbox" name="isUserCookie" checked="checked" value="记住密码">记住密码</td>
            </tr>
            <tr>
                <td><input type="submit" name="login" value="确定"></td>
                <td><input type="reset" name="cancel" value="取消"></td>
            </tr>
        </table>
    </form>
</body>
</html>
