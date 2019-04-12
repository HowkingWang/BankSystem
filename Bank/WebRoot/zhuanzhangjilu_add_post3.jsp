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
 

String zhuanchuzhanghao=request.getParameter("zhuanchuzhanghao");

String zhuanzhangjine=request.getParameter("zhuanzhangjine");

	
	
					String sql="insert into zhuanzhangjilu(zhuanchuzhanghao,zhuanruzhanghao,zhuanzhangjine,beizhu,leixing) values('','"+zhuanchuzhanghao+"','"+zhuanzhangjine+"','','充值') ";
  	  	connDbBean.executeUpdate(sql);
		
		sql="update zhanghuxinxi set yue=yue+"+zhuanzhangjine+" where zhanghao='"+zhuanchuzhanghao+"'";
		connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('充值成功!!');location.href='zhuanzhangjilu_add3.jsp';</script>");
				




 %>
  </body>
</html>

