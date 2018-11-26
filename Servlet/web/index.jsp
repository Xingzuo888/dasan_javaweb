<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/24
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
      <h1>第一个servlet小例子</h1>
      <hr>
      <a href="servlet/HelloServlet">Get方式请求HelloServlet</a>
      <form action="servlet/HelloServlet" method="post">
          <input type="submit" value="Post方式请求HelloServlet">
      </form>
  </body>
</html>
