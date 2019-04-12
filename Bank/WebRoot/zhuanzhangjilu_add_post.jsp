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

	
	String sql="select id from zhanghuxinxi where zhanghao='"+zhuanruzhanghao+"'";
  	  	 ResultSet RS_result=connDbBean.executeQuery(sql);
		  if(RS_result.next()){
		  sql="select yue from zhanghuxinxi where zhanghao='"+zhuanchuzhanghao+"'";
		   ResultSet RS_result2=connDbBean.executeQuery(sql);
		   while(RS_result2.next())
		   {
		   		if(Float.valueOf(RS_result2.getString("yue")).floatValue()<Float.valueOf(zhuanzhangjine).floatValue())
				{
					out.print("<script>alert('对不起，余额不足，操作失败!!');location.href='zhuanzhangjilu_add.jsp';</script>");
				}
				else
				{
					 sql="insert into zhuanzhangjilu(zhuanchuzhanghao,zhuanruzhanghao,zhuanzhangjine,beizhu,leixing) values('"+zhuanchuzhanghao+"','"+zhuanruzhanghao+"','"+zhuanzhangjine+"','"+beizhu+"','转账') ";
  	  	connDbBean.executeUpdate(sql);
		sql="update zhanghuxinxi set yue=yue+"+zhuanzhangjine+" where zhanghao='"+zhuanruzhanghao+"'";
		connDbBean.executeUpdate(sql);
		sql="update zhanghuxinxi set yue=yue-"+zhuanzhangjine+" where zhanghao='"+zhuanchuzhanghao+"'";
		connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('添加成功!!');location.href='zhuanzhangjilu_add.jsp';</script>");
				}
		   }
		
}
else
{
	  	  	out.print("<script>alert('您输入的转入帐户不存在，请确认!!');history.back();</script>");

}

 
  	  


 %>
  </body>
</html>

