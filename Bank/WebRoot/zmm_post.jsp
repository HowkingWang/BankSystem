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
 
  String ymm=request.getParameter("ymm");
 String xmm1=request.getParameter("xmm1");
 ResultSet RS_result=connDbBean.executeQuery("select * from zhanghuxinxi where zhanghao='"+ymm+"' and shenfenzheng='"+xmm1+"'");

 if(!RS_result.next())
{
out.print("<script>alert('�Բ������������޷���ѯ!');window.history.go(-1);</script>");
	}
else{

	
  	  	out.print("<script>alert('���������ǣ�"+RS_result.getString("mima")+"�������Ʊ���!');location.href='login.jsp';</script>");
  	 
	}
RS_result.close();
 %>
  </body>
</html>

