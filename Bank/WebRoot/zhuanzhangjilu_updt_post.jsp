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
String zhuanchuzhanghao=request.getParameter("zhuanchuzhanghao");String zhuanruzhanghao=request.getParameter("zhuanruzhanghao");String zhuanzhangjine=request.getParameter("zhuanzhangjine");String beizhu=request.getParameter("beizhu");
String id=request.getParameter("id");
String sql="update zhuanzhangjilu set zhuanchuzhanghao='"+zhuanchuzhanghao+"',zhuanruzhanghao='"+zhuanruzhanghao+"',zhuanzhangjine='"+zhuanzhangjine+"',beizhu='"+beizhu+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='zhuanzhangjilu_list.jsp';</script>");
%>
  </body>
</html>


