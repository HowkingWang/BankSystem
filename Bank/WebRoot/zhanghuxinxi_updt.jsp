
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
    
    <title>�ʻ���Ϣ</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.zhanghao.value==""){alert("�������ʺ�");document.form1.zhanghao.focus();return false;}if(document.form1.mima.value==""){alert("����������");document.form1.mima.focus();return false;}if(document.form1.xingming.value==""){alert("����������");document.form1.xingming.focus();return false;}if(document.form1.shenfenzheng.value==""){alert("���������֤");document.form1.shenfenzheng.focus();return false;}if(document.form1.yue.value==""){alert("���������");document.form1.yue.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="zhanghuxinxi_updt_post.jsp?id=<%=id %>">
  �޸��ʻ���Ϣ:
  <br><br>
  <%
  String sql="select * from zhanghuxinxi where id="+id;
  String zhanghao="";String mima="";String xingming="";String xingbie="";String shenfenzheng="";String dizhi="";String yue="";String zhuangtai="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  zhanghao=RS_result.getString("zhanghao");mima=RS_result.getString("mima");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");shenfenzheng=RS_result.getString("shenfenzheng");dizhi=RS_result.getString("dizhi");yue=RS_result.getString("yue");zhuangtai=RS_result.getString("zhuangtai");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>�ʺţ�</td><td><input name='zhanghao' type='text' id='zhanghao' size='50' value='<%=zhanghao%>' /></td></tr><tr><td>���룺</td><td><input name='mima' type='text' id='mima' value='<%= mima%>' /></td></tr><tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= xingming%>' /></td></tr><tr><td>�Ա�</td><td><select name='xingbie' id='xingbie'><option value="��">��</option><option value="Ů">Ů</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=xingbie%>';</script><tr><td>���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' size='50' value='<%=shenfenzheng%>' /></td></tr><tr><td>��ַ��</td><td><input name='dizhi' type='text' id='dizhi' size='50' value='<%=dizhi%>' /></td></tr><tr><td>��</td><td><input name='yue' type='text' id='yue' value='<%= yue%>' /></td></tr><tr><td>״̬��</td><td><select name='zhuangtai' id='zhuangtai'>
       <option value="����">����</option>
       <option value="��ʧ">��ʧ</option>
     </select></td></tr><script language="javascript">document.form1.zhuangtai.value='<%=zhuangtai%>';</script><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu'><%=beizhu%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


