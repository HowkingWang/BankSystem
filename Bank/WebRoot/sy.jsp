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
    
    <title>�û���¼</title>
  </head>

  <body >
 <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#000000">
  <tr> 
    <td height="300" align="center" valign="top" bgcolor="#F6F6F6"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="5%">��</td>
          <td width="95%" height="40"><span style="font-size:14px">��ӭ�������й���ϵͳ������������Ȩ�ޣ�</span></td> 
        </tr>
        <tr> 
          <td colspan="2">��</td>
        </tr>
      </table>
      <table width="95%" border="0" cellspacing="2" cellpadding="0">
        <tr> 
          <td height="101" align="left"><%
							String sql="select content from dx where leibie='ϵͳ����'";
  String neirong="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
neirong=RS_result.getString("content");
out.print(neirong);
}
   %></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr> 
    <td height="30" align="center" bgcolor="#BBE5A6"><font color="#ffffff">
     ��ϵ�绰��800-820-8888 ���䣺123456@qq.com</font></td>
  </tr>
</table>
 <p class="welcome">&nbsp;</p>
  </body>
</html>

