
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
    
    <title>�ʻ���Ϣ</title><LINK href="css.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>

  </head>
<script language="javascript">

function check()
{
	if(document.form1.zhanghao.value==""){alert("�������ʺ�");document.form1.zhanghao.focus();return false;}
	
	if(document.form1.mima.value==""){alert("����������");document.form1.mima.focus();return false;}
	
	
	if(document.form1.xingming.value==""){alert("����������");document.form1.xingming.focus();return false;}
	if(document.form1.shenfenzheng.value==""){alert("���������֤");document.form1.shenfenzheng.focus();return false;}
	if(document.form1.yue.value==""){alert("���������");document.form1.yue.focus();return false;}

    
}
function gow()
{
	document.location.href="zhanghuxinxi_add.jsp?xuehao="+document.form1.xuehao.value;
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="zhanghuxinxi_add_post.jsp"> 
  &lsquo;����ʻ���Ϣ: 
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>�ʺţ�</td><td><input name='zhanghao' type='text' id='zhanghao' value='' size='50' />&nbsp;*</td></tr><tr><td>���룺</td><td><input name='mima' type='text' id='mima'length='6' value='' />&nbsp;*</td></tr><tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='' />&nbsp;*</td></tr><tr><td>�Ա�</td><td><select name='xingbie' id='xingbie'><option value="��">��</option><option value="Ů">Ů</option></select></td></tr><tr><td>���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' size='50' />&nbsp;*</td></tr><tr><td>��ַ��</td><td><input name='dizhi' type='text' id='dizhi' value='' size='50' /></td></tr><tr><td>��</td><td><input name='yue' type='text' id='yue' value='' />&nbsp;*</td></tr><tr><td>״̬��</td><td><select name='zhuangtai' id='zhuangtai'>
     <option value="����">����</option>
     <option value="��ʧ">��ʧ</option>
   </select></td></tr><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu'></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();"  />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

