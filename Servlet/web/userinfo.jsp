<%@ page import="java.text.SimpleDateFormat" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/25
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="regUser" class="servlet.Users" scope="session"/>
<html>
<head>
    <title>用户信息</title>
    <style>
        .label{
            width: 200px;
        }
    </style>
</head>
<body>
    <h1>用户信息</h1>
    <hr>
    <center>

    <table width="600" cellpadding="0" cellspacing="0" border="1">
        <tr>
            <td class="label">用户名：</td>
            <td>&nbsp;<jsp:getProperty name="regUser" property="username"/></td>
        </tr>
        <tr>
            <td class="label">密码：</td>
            <td>&nbsp;<jsp:getProperty name="regUser" property="password"/></td>
        </tr>
        <tr>
            <td class="label">性别</td>
            <td>&nbsp;<jsp:getProperty name="regUser" property="sex"/></td>
        </tr>
        <tr>
            <td class="label">E-mail：</td>
            <td>&nbsp;<jsp:getProperty name="regUser" property="email"/></td>
        </tr>
        <tr>
            <td class="label">出生日期：</td>
            <td>&nbsp;<%
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
                String date = sdf.format(regUser.getBirthday());
            %>
            <%=date%></td>
        </tr>
        <tr>
            <td class="label">爱好：</td>
            <td>&nbsp;<%
                String[] favorites = regUser.getFavorites();
                if(favorites != null && favorites.length > 0){
                    for(String f:favorites){
            %>
                    <%=f%>&nbsp;&nbsp;
            <%
                    }
                }
            %></td>
        </tr>
        <tr>
            <td class="label">自我介绍：</td>
            <td>&nbsp;<jsp:getProperty name="regUser" property="introduce"/></td>
        </tr>
        <tr>
            <td class="label">是否接受协议：</td>
            <td>&nbsp;<jsp:getProperty name="regUser" property="flag"/></td>
        </tr>
    </table>
    </center>
</body>
</html>
