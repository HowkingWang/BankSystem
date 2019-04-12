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
 ResultSet RS_result=connDbBean.executeQuery("select * from [putongguanliyuan] where gonghao='"+gonghao+"'");

 if(RS_result.next())
{
out.print("<script>alert('该工号已经存在,请换其他工号!');window.history.go(-1);</script>");
	}
else{

	
  	  	String sql="insert into putongguanliyuan(gonghao,xingming,mima,bumen,dianhua,shenfenzheng,zhaopian,xingbie,beizhu) values('"+gonghao+"','"+xingming+"','"+mima+"','"+bumen+"','"+dianhua+"','"+shenfenzheng+"','"+zhaopian+"','"+xingbie+"','"+beizhu+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('添加成功!!');location.href='putongguanliyuan_add.jsp';</script>");
  	  
	}
 RS_result.close();

 %>
  </body>
</html>

