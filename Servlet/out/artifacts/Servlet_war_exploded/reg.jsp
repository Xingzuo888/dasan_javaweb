<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/25
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
    <h1>用户注册</h1>
    <hr>
    <form action="servlet/RegServlet" method="post">
        <table>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username" ></td>
        </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password" ></td>
            </tr>
            <tr>
                <td>确认密码：</td>
                <td><input type="password" name="acpassword" ></td>
            </tr>
            <tr>
                <td>电子邮箱：</td>
                <td><input type="email" name="email" ></td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input type="radio" name="sex" value="男" checked="checked">男<input type="radio" name="sex" value="女" >女</td>
            </tr>
            <tr>
                <td>出生日期：</td>
                <td><input type="date" name="birthday" ></td>
            </tr>
            <tr>
                <td>爱好：</td>
                <td><input type="checkbox" name="favorites" value="NBA">NBA
                    <input type="checkbox" name="favorites" value="音乐">音乐
                    <input type="checkbox" name="favorites" value="电影">电影
                    <input type="checkbox" name="favorites" value="上网">上网</td>
            </tr>
            <tr>
                <td>自我介绍：</td>
                <td><textarea name="introduce" cols="30" rows="10"></textarea></td>
            </tr>
            <tr>
                <td>接受协议：</td>
                <td><input type="checkbox" name="flag">是否接受霸王条款</td>
            </tr>
            <tr>
                <td><input type="submit" name="register" value="注册">
                <input type="button" name="cancel" value="取消"></td>
            </tr>
        </table>
    </form>
</body>
</html>
