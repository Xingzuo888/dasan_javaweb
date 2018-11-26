<%@ page import="java.util.List" %>
<%@ page import="demo.vo.UserInfo" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/14
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<String> list = (List<String>) request.getSession().getAttribute("info");
    List<UserInfo> data = (List<UserInfo>) request.getSession().getAttribute("data");
    int sum = data.size();
    int page_data = 2;
    int pages = sum%page_data==0?sum/page_data:sum/page_data+1;
    int curr_page = 1;
    if (request.getParameter("curr_page")!=null)
        curr_page = Integer.valueOf(request.getParameter("curr_page"));
    int begin = (curr_page-1)*page_data;
    int end = curr_page*page_data>sum?sum:curr_page*page_data;
%>

<html>
<body>
<h1><%=list.get(0)%></h1>
<hr>
<div align="center">
    <h2>数据表</h2>
    <table border="1" cellspacing="0" style="width: 70%">
        <tr align="center" style="color: white;background-color: brown">
            <th>id</th>
            <th>用户名</th>
            <th>密码</th>
            <th>性别</th>
            <th>年龄</th>
        </tr>
        <%for (int i=begin;i<end;i++){
            UserInfo u = data.get(i);%>
        <tr align="center" style="height: 40px">
            <td><%=u.getId()%></td>
            <td><%=u.getUsername()%></td>
            <td><%=u.getPassword()%></td>
            <td><%=u.getSex()%></td>
            <td><%=u.getAge()%></td>
        </tr>
        <%}%>
    </table>
    <%=sum%>条记录 &nbsp;&nbsp; 共<%=pages%>页 &nbsp;&nbsp;
    <%if (curr_page!=1){%>
        <a href="javascript:upPage(<%=curr_page-1%>)" style="text-decoration-line: none">上一页</a>&nbsp;&nbsp;
    <%}%>
    <%if (curr_page!=pages){%>
    <a href="javascript:downPage(<%=curr_page+1%>)" style="text-decoration-line: none">下一页</a>&nbsp;&nbsp;
    <%}%>
    到
    <select onchange="jump(this)">
        <%for (int i=1; i<=pages; i++){
            if (curr_page==i){%>
        <option value="<%=i%>" selected><%=i%></option>
        <%}else {%>
        <option value="<%=i%>"><%=i%></option>
        <%}
        }%>
    </select>
    页
</div>
<form name="form1" action="main.jsp" method="post">
    <input type="hidden" name="curr_page">
</form>
</body>
<script>
    function jump(obj) {
        var index = obj.selectedIndex;
        var value = obj.options[index].value;
        form1.curr_page.value = value;
        form1.submit();
    }
    function upPage(jump_page) {
        form1.curr_page.value = jump_page;
        form1.submit();
    }
    function downPage(jump_page) {
        form1.curr_page.value = jump_page;
        form1.submit();
    }
</script>
</html>
