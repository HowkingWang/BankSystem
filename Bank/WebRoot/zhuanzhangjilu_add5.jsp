
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
	if(document.form1.zhuanchuzhanghao.value=="")
	{
	alert("请输入转出帐号");document.form1.zhuanchuzhanghao.focus();return false;
	}
	
	if(document.form1.zhuanruzhanghao.value==""){
	alert("请输入转入账号");document.form1.zhuanruzhanghao.focus();return false;
	}
	
	return true;
}
function gow()
{
	
}
function count() 
{	    
   if(document.getElementById("bizhong").value=="美元")
    {
       document.getElementById("jine").value = document.getElementById("renmb").value/6;
    }
   if(document.getElementById("bizhong").value=="欧元")
    {
       document.getElementById("jine").value = document.getElementById("renmb").value/8.5;
     }
   if(document.getElementById("bizhong").value=="日元")
    {
       document.getElementById("jine").value = document.getElementById("renmb").value/0.06;
    }
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="zhuanzhangjilu_add_post5.jsp">
  购买外汇:
  <br>
  <br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    
   <tr>
     <td>帐号：&nbsp;<input name='zhuanchuzhanghao' type='text'  id='zhuanchuzhanghao' value='' size='50' />*</td>
   </tr>
   <tr>
        <td>需换算的人民币金额：&nbsp;<input name='renmb' type='text' id='renmb' value='' /></td>
   </tr>
   <tr>
   <td>需换算的币种：<select name="bizhong" id="bizhong">
                  <option value="美元">美元</option>
				  <option value="欧元">欧元</option>
                  <option value="日元">日元</option>
                </select>
   </td></tr>
      <tr>
     <td><input name='jine' type='text' id='jine'  value='' />&nbsp;<input type='button' value='计算外汇' onClick="count( )"/></td>
   </tr>
     <tr>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

