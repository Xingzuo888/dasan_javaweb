<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/17
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="messageBean" class="com.wgh.MessageBean" scope="request">
    <jsp:setProperty name="messageBean" property="*"/>
</jsp:useBean>
<jsp:forward page="show.jsp"/>    //跳转到show.jsp