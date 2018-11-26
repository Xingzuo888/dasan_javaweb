<%@ page import="demo.vo.UserinfoBean" %>
<%@ page import="demo.dbc.DatabaseConnection" %>
<%@ page import="demo.factory.Factory" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/7
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String age = request.getParameter("age");
    String sex = request.getParameter("sex");
    UserinfoBean bean = new UserinfoBean();
    bean.setAge(Integer.valueOf(age));
    bean.setSex(sex.charAt(0));
    bean.setUsername(username);
    bean.setPassword(password);
    DatabaseConnection dbc = new DatabaseConnection();
    int flag = Factory.getIUserinfoDaoInstance(dbc.getConn()).add(bean);
    List<UserinfoBean> list = Factory.getIUserinfoDaoInstance(dbc.getConn()).findAll();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <table style="border: solid 1px rebeccapurple;width: 80%;">
        <tr align="center">
            <th>姓名</th>
            <th>密码</th>
            <th>性别</th>
            <th>年龄</th>
        </tr>
        <%
            for (UserinfoBean b: list){
                %>
                    <tr align="center">
                        <td><%=b.getUsername()%></td>
                        <td><%=b.getPassword()%></td>
                        <td><%=b.getSex()%></td>
                        <td><%=b.getAge()%></td>
                    </tr>
                <%
            }
            dbc.close();
        %>
    </table>
</div>
</body>
</html>
