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
 
 String uid=request.getParameter("username");
 String pwd=request.getParameter("pwd");
 String cx=new String(request.getParameter("cx").getBytes("8859_1"));
 String sql="";
 if(cx.equals("普通帐户"))
 {
 	sql="select * from [zhanghuxinxi] where zhanghao='"+uid+"' and mima='"+pwd+"' and zhuangtai='正常'";
 }
 if(cx.equals("超级管理员"))
 {
 	sql="select * from [allusers] where username='"+uid+"' and pwd='"+pwd+"'";
 }
 if(cx.equals("普通管理员"))
 {
 	sql="select * from [putongguanliyuan] where gonghao='"+uid+"' and mima='"+pwd+"'";
 }
 ResultSet RS_result=connDbBean.executeQuery(sql);
 if(!RS_result.next())
{
	out.print("<script>alert('您输入的用户不存在或密码错误，或帐户处于挂失状态,请重新登录!');window.history.go(-1);</script>");
	}
else{
	
  	  session.setAttribute("username",uid);
  	  session.setAttribute("cx",cx);
  	  
	 response.sendRedirect("main.jsp");	 
	} 
RS_result.close();

 %>
  </body>
</html>

