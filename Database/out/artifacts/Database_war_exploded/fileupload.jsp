<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="java.io.File" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="demo.Utils" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/6
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Utils utils = new Utils();
    String ip = request.getRemoteAddr();
    //创建磁盘工厂对象
    DiskFileItemFactory factory = new DiskFileItemFactory();
    String path = pageContext.getServletContext().getRealPath("/");
    factory.setRepository(new File(path+"uploadTemp"));//设置临时文件夹
    ServletFileUpload upload = new ServletFileUpload(factory);
    //设置上传文件大小
    upload.setFileSizeMax(5*1024*1024);
    //获取表单所有数据
    List<FileItem> datas = upload.parseRequest(request);
    for (FileItem item : datas){
        if (item.isFormField()){
            %>
            <h1><%=item.getString()%></h1>
            <%
        }else{
            InputStream is = null;
            FileOutputStream fos = null;
            is = item.getInputStream();
            String ext = item.getName().split("\\.")[1];
            String filename = utils.getFileNameByIp(ip)+"."+ext;
            fos = new FileOutputStream(path+"upload"+File.separator+filename);
            byte[] bytes = new byte[512];
            while ((is.read(bytes,0,512)) != -1){
                fos.write(bytes);
            }
            fos.close();
            is.close();
            %>
            <img src="upload/<%=filename%>"/><br>
            <%
        }
    }
%>
