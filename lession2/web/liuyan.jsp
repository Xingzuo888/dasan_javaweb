<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/17
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言页面</title>
</head>
<body>
    <form action="deal.jsp" method="post">
        <ul>
            <li>留 &nbsp;言 &nbsp;者：<input type="text" name="author" size="20"></li>
            <li>留言标题：<input type="text" name="title" size="35"></li>
            <li>
                留言内容：<textarea name="content" rows="8" cols="34"></textarea>
            </li>
            <li>
                <input type="submit" value="提交"><input type="reset" value="重置">
            </li>
        </ul>
    </form>
</body>
</html>
