
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
    
    <title>帐户信息</title><LINK href="css.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>

  </head>
<script language="javascript">

function check()
{
	if(document.form1.zhanghao.value==""){alert("请输入帐号");document.form1.zhanghao.focus();return false;}
	
	if(document.form1.mima.value==""){alert("请输入密码");document.form1.mima.focus();return false;}
	
	
	if(document.form1.xingming.value==""){alert("请输入姓名");document.form1.xingming.focus();return false;}
	if(document.form1.shenfenzheng.value==""){alert("请输入身份证");document.form1.shenfenzheng.focus();return false;}
	if(document.form1.yue.value==""){alert("请输入余额");document.form1.yue.focus();return false;}

    
}
function gow()
{
	document.location.href="zhanghuxinxi_add.jsp?xuehao="+document.form1.xuehao.value;
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="zhanghuxinxi_add_post.jsp"> 
  &lsquo;添加帐户信息: 
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>帐号：</td><td><input name='zhanghao' type='text' id='zhanghao' value='' size='50' />&nbsp;*</td></tr><tr><td>密码：</td><td><input name='mima' type='text' id='mima'length='6' value='' />&nbsp;*</td></tr><tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='' />&nbsp;*</td></tr><tr><td>性别：</td><td><select name='xingbie' id='xingbie'><option value="男">男</option><option value="女">女</option></select></td></tr><tr><td>身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' size='50' />&nbsp;*</td></tr><tr><td>地址：</td><td><input name='dizhi' type='text' id='dizhi' value='' size='50' /></td></tr><tr><td>余额：</td><td><input name='yue' type='text' id='yue' value='' />&nbsp;*</td></tr><tr><td>状态：</td><td><select name='zhuangtai' id='zhuangtai'>
     <option value="正常">正常</option>
     <option value="挂失">挂失</option>
   </select></td></tr><tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu'></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();"  />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

