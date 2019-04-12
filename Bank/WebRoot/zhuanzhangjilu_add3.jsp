
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
    
    <title>转帐记录</title><LINK href="css.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.zhuanchuzhanghao.value==""){alert("请输入转出帐号");document.form1.zhuanchuzhanghao.focus();return false;}if(document.form1.zhuanruzhanghao.value==""){alert("请输入转入账号");document.form1.zhuanruzhanghao.focus();return false;}
}
function gow()
{
	document.location.href="zhuanzhangjilu_add.jsp?xuehao="+document.form1.xuehao.value;
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="zhuanzhangjilu_add_post3.jsp">
  充值:
  <br>
  <br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr>
     <td>帐号：</td>
     <td><input name='zhuanchuzhanghao' type='text'  id='zhuanchuzhanghao' value='' size='50' />&nbsp;*</td></tr><tr>
       <td>充值金额：</td>
       <td><input name='zhuanzhangjine' type='text' id='zhuanzhangjine' value='' /></td></tr>
       
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

