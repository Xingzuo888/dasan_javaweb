<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/18
  Time: 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("UTF-8");
  String uname = request.getParameter("username");
  String password = request.getParameter("pwd");

  if (uname.equals("adman") && password.equals("123456")){
      request.setAttribute("user",uname);
//      response.sendRedirect("success.jsp");//请求的重定向  数据不会被保存
      request.getRequestDispatcher("success.jsp").forward(request,response);//请求的转发，数据可以保存
  }else{
      response.sendRedirect("default.jsp");
  }
  String[] inst=request.getParameterValues("inst");
%>

