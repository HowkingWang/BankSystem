
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
    
    <title>ת�ʼ�¼</title><LINK href="css.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.zhuanchuzhanghao.value=="")
	{
	alert("������ת���ʺ�");document.form1.zhuanchuzhanghao.focus();return false;
	}
	
	if(document.form1.zhuanruzhanghao.value==""){
	alert("������ת���˺�");document.form1.zhuanruzhanghao.focus();return false;
	}
	
	return true;
}
function gow()
{
	
}
function count() 
{	    
   if(document.getElementById("bizhong").value=="��Ԫ")
    {
       document.getElementById("jine").value = document.getElementById("renmb").value/6;
    }
   if(document.getElementById("bizhong").value=="ŷԪ")
    {
       document.getElementById("jine").value = document.getElementById("renmb").value/8.5;
     }
   if(document.getElementById("bizhong").value=="��Ԫ")
    {
       document.getElementById("jine").value = document.getElementById("renmb").value/0.06;
    }
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="zhuanzhangjilu_add_post5.jsp">
  �������:
  <br>
  <br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    
   <tr>
     <td>�ʺţ�&nbsp;<input name='zhuanchuzhanghao' type='text'  id='zhuanchuzhanghao' value='' size='50' />*</td>
   </tr>
   <tr>
        <td>�軻�������ҽ�&nbsp;<input name='renmb' type='text' id='renmb' value='' /></td>
   </tr>
   <tr>
   <td>�軻��ı��֣�<select name="bizhong" id="bizhong">
                  <option value="��Ԫ">��Ԫ</option>
				  <option value="ŷԪ">ŷԪ</option>
                  <option value="��Ԫ">��Ԫ</option>
                </select>
   </td></tr>
      <tr>
     <td><input name='jine' type='text' id='jine'  value='' />&nbsp;<input type='button' value='�������' onClick="count( )"/></td>
   </tr>
     <tr>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

