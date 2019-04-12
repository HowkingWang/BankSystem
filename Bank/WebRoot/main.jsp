<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>银行管理系统</title>
    
  </head>
  
<frameset rows="94,*" cols="*" framespacing="0" frameborder="NO" border="0">
  <frame src="top.jsp" name="top" scrolling="NO" noresize>
  <frameset rows="*" cols="198,*" framespacing="0" frameborder="NO" border="0">
    <frame src="mygo.jsp" name="left" noresize>
    <frame src="sy.jsp" name="main" noresize>
  </frameset>

</frameset>
<noframes><body>
</body>
</noframes></html>
