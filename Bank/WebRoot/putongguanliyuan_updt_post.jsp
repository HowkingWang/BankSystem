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
String gonghao=request.getParameter("gonghao");String xingming=request.getParameter("xingming");String mima=request.getParameter("mima");String bumen=request.getParameter("bumen");String dianhua=request.getParameter("dianhua");String shenfenzheng=request.getParameter("shenfenzheng");String zhaopian=request.getParameter("zhaopian");String xingbie=request.getParameter("xingbie");String beizhu=request.getParameter("beizhu");
String id=request.getParameter("id");
String sql="update putongguanliyuan set gonghao='"+gonghao+"',xingming='"+xingming+"',mima='"+mima+"',bumen='"+bumen+"',dianhua='"+dianhua+"',shenfenzheng='"+shenfenzheng+"',zhaopian='"+zhaopian+"',xingbie='"+xingbie+"',beizhu='"+beizhu+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='putongguanliyuan_updt.jsp?id="+id+"';</script>");
%>
  </body>
</html>


