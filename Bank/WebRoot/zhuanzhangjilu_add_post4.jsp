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

String dianfeijine=request.getParameter("dianfeijine");

	
	
		 String sql="select yue from zhanghuxinxi where zhanghao='"+zhuanchuzhanghao+"'";
		   ResultSet RS_result2=connDbBean.executeQuery(sql);
		   while(RS_result2.next())
		   {
		   		if(Float.valueOf(RS_result2.getString("yue")).floatValue()<Float.valueOf(dianfeijine).floatValue())
				{
					out.print("<script>alert('对不起，余额不足，操作失败!!');location.href='zhuanzhangjilu_add4.jsp';</script>");
				}
				if(Float.valueOf(dianfeijine).floatValue()>2000)
				{
				    out.print("<script>alert('对不起，单笔支付不能超过两千，操作失败!!');location.href='zhuanzhangjilu_add4.jsp';</script>");
				}
				else
				{
					 sql="insert into zhuanzhangjilu(zhuanchuzhanghao,zhuanruzhanghao,zhuanzhangjine,beizhu,leixing) values('"+zhuanchuzhanghao+"','','"+dianfeijine+"','','在线支付') ";
  	  	connDbBean.executeUpdate(sql);
		
		sql="update zhanghuxinxi set yue=yue-"+dianfeijine+" where zhanghao='"+zhuanchuzhanghao+"'";
		connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('支付成功!!');location.href='zhuanzhangjilu_add4.jsp';</script>");
				}
		   }
		




 %>
  </body>
</html>

