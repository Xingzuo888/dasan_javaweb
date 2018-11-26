<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/31
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  当前在线用户人数：${userNumber}
  <%
    ArrayList<listener.User> userList = (ArrayList<listener.User>)request.getServletContext().getAttribute("userList");
    if (userList!=null){
        for (int i=0; i<userList.size(); i++){
          listener.User user = userList.get(i);
          %>
  IP:<%=user.getIpString()%>,FirstTime:<%=user.getFirstTimeString()%>,SesionId:<%=user.getSessionIdString()%>
   <%     }
    }
  %>
  </body>
</html>
