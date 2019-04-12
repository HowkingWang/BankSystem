
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>银行管理系统</title>
<link href="admin/myweb.css" rel="stylesheet" type="text/css">


  </head>

  <body >
<table width="100%"  border="0" cellspacing="0" cellpadding="0" height="94" background="admin/1.gif">
  <tr>
    <td valign="top" ><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="335"><table width="100%" align="center" height="34" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
                <div align="center" class="STYLE5">银行管理系统</div>
            </div></td>
          </tr>
        </table></td>
        <td width="42" height="94">　</td>
        <td width="691"  align="right"><table width="100%" border="0">
          <tr>
            <td height="72">&nbsp;</td>
          </tr>
          <tr>
            <td align="right">当前用户：<%=request.getSession().getAttribute("username")%>&nbsp;&nbsp;权限：<%=request.getSession().getAttribute("cx")%>&nbsp;
			<%
			if(request.getSession().getAttribute("cx").equals("普通管理员") || request.getSession().getAttribute("cx").equals("超级管理员") )
			{
			%>
			<a href="mod.jsp" target="main"><font color="#FFFFFF">修改密码</font></a>
			<%
			}
			%>
			&nbsp;&nbsp;&nbsp;<a href="logout.jsp" target="_parent"><font color="#FFFFFF">退出</font></a></td>
          </tr>
        </table></td>
      </tr>
    </table> </td>
  </tr>
</table>

  </body>
</html>

