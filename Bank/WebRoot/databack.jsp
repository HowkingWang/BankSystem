<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
    

  </head>
  
  <body>
  <%
 


String sql="";
  sql="backup database Bank to disk='C:/Bank.dat'";
	  	
connDbBean.executeUpdate(sql);
out.print("<script>alert('�����ɹ�!!���������ݿ��ѳɹ�������C:/Bank.dat');location.href='sy.jsp';</script>");
  	  


 %>
  </body>
</html>

