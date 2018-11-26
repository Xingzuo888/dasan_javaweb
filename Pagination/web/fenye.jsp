<%@ page import="java.util.List" %>
<%@ page import="demo.vo.StudentInfo" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/13
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<StudentInfo> list_datas = new ArrayList<>();
    for (int i = 1; i <= 86; i++){
        StudentInfo s = new StudentInfo("s000"+i,"同学"+i,i%2==0?'w':'m',10+i,"专业"+i);
        list_datas.add(s);
    }

    int sum = list_datas.size();
    int per_datas = 10;//每页多少条数据
    int pages = sum%per_datas==0?sum/per_datas:sum/per_datas+1;//总共多少页
    int curr_page = 1;//当前页码数
    if (request.getParameter("curr_page") != null)
        curr_page = Integer.valueOf(request.getParameter("curr_page"));
    int begin = (curr_page - 1) * per_datas;//显示的第一条数据
    int end = curr_page*per_datas>sum?sum:curr_page*per_datas;//显示的最后一条数据
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <h2>学生记录表</h2>
    <table border="1" cellspacing="0" style="width: 70%">
        <tr style="height: 40px;color: white;background-color: rebeccapurple">
            <th>学号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>专业</th>
        </tr>
        <%for (int i=begin;i<end;i++){
            StudentInfo sdt = list_datas.get(i);%>
        <tr align="center" style="height: 40px">
            <td><%=sdt.getSno()%></td>
            <td><%=sdt.getSname()%></td>
            <td><%=sdt.getSex()%></td>
            <td><%=sdt.getAge()%></td>
            <td><%=sdt.getPf()%></td>
        </tr>
        <%}%>
    </table>
    <%=sum%>条记录&nbsp;&nbsp;共<%=pages%>页&nbsp;&nbsp;
    <%if (curr_page!=1){%>
        <a href="javascript:upPage(<%=curr_page-1%>)" style="text-decoration-line: none">上一页</a>&nbsp;&nbsp;
    <%}%>
    <%if(curr_page!=pages){%>
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
<form name="form1" action="fenye.jsp" method="post">
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
