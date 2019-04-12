<%@ page language="java"  pageEncoding="gb2312" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("gb2312"); 
response.setCharacterEncoding("gb2312"); 
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
    

  </head>
  
  <body>
  <%
 

String zhanghao=request.getParameter("zhanghao");String mima=request.getParameter("mima");String xingming=request.getParameter("xingming");String xingbie=request.getParameter("xingbie");String shenfenzheng=request.getParameter("shenfenzheng");String dizhi=request.getParameter("dizhi");String yue=request.getParameter("yue");String zhuangtai=request.getParameter("zhuangtai");String beizhu=request.getParameter("beizhu");


	
  	  	String sql="insert into zhanghuxinxi(zhanghao,mima,xingming,xingbie,shenfenzheng,dizhi,yue,zhuangtai,beizhu) values('"+zhanghao+"','"+mima+"','"+xingming+"','"+xingbie+"','"+shenfenzheng+"','"+dizhi+"','"+yue+"','"+zhuangtai+"','"+beizhu+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('Ìí¼Ó³É¹¦!!');location.href='zhanghuxinxi_add.jsp';</script>");
  	  


 %>
  </body>
</html>

