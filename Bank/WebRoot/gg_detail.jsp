<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>详情</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE1 {
	color: #0066FF;
	font-weight: bold;
}
.STYLE2 {
	color: #FFFFFF;
	font-weight: bold;
}
.STYLE8 {color: #185838;
	font-weight: bold;
}
-->
</style>
</head>
<%
  String id=request.getParameter("id");
  connDbBean.executeUpdate("update xinwentongzhi set dianjilv=dianjilv+1 where id="+id);
   %>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table id="__01" width="838" height="177" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="17" background="qtimages/1_02_01_02_02_01.gif">&nbsp;</td>
                        <td width="716" height="718" valign="top">
                          <%
  String sql="select * from xinwentongzhi where id="+id;
  String biaoti="";String leibie="";String neirong="";String dianjilv="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  biaoti=RS_result.getString("biaoti");leibie=RS_result.getString("leibie");neirong=RS_result.getString("neirong");dianjilv=RS_result.getString("dianjilv");

   %>
                      
                          <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FA8A89" class="newsline" style="border-collapse:collapse">
                            <tr>
                              <td height="46" align="center" class="STYLE8"><%=biaoti %> (被访问<%=dianjilv%>次) </td>
                            </tr>
                            <tr>
                              <td height="110" align="left"><%=neirong %></td>
                            </tr>
                            <tr>
                              <td height="33" align="right"><input type="button" name="Submit5" value="返回" onClick="javascript:history.back();" style=" height:19px; border:solid 1px #000000; color:#666666"></td>
                            </tr>
                          </table>
                          <%}%>                          </td>
                        <td width="14" background="qtimages/1_02_01_02_02_03.gif">&nbsp;</td>
                      </tr>
</table>
</body>
</html>