
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
    
    <title>普通管理员</title><script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
	</script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.gonghao.value==""){alert("请输入工号");document.form1.gonghao.focus();return false;}if(document.form1.xingming.value==""){alert("请输入姓名");document.form1.xingming.focus();return false;}if(document.form1.mima.value==""){alert("请输入密码");document.form1.mima.focus();return false;}if(document.form1.dianhua.value==""){alert("请输入电话");document.form1.dianhua.focus();return false;}if(document.form1.shenfenzheng.value==""){alert("请输入身份证");document.form1.shenfenzheng.focus();return false;}
}
</script>
  <body >

  <form name="form1" id="form1" method="post" action="putongguanliyuan_updt_post2.jsp">
  修改普通管理员:
  <br><br>
  <%
  String sql="select * from putongguanliyuan where gonghao='"+request.getSession().getAttribute("username")+"'";
  String gonghao="";String xingming="";String mima="";String bumen="";String dianhua="";String shenfenzheng="";String zhaopian="";String xingbie="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  gonghao=RS_result.getString("gonghao");xingming=RS_result.getString("xingming");mima=RS_result.getString("mima");bumen=RS_result.getString("bumen");dianhua=RS_result.getString("dianhua");shenfenzheng=RS_result.getString("shenfenzheng");zhaopian=RS_result.getString("zhaopian");xingbie=RS_result.getString("xingbie");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>工号：</td><td><input name='gonghao' type='text' id='gonghao' value='<%= gonghao%>' readonly='readonly' style='border:solid 1px #000000; color:#666666' /> * 此项不得修改</td></tr><tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= xingming%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>密码：</td><td><input name='mima' type='text' id='mima' value='<%= mima%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>部门：</td><td><select name='bumen' id='bumen'><%sql="select bumen from bumenxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("bumen")%>" ><%=RS_result.getString("bumen")%></option><%}%></select></td></tr><script language="javascript">document.form1.bumen.value='<%=bumen%>';</script><tr><td>电话：</td><td><input name='dianhua' type='text' id='dianhua' value='<%= dianhua%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' size='50' value='<%=shenfenzheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>照片：</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='<%= zhaopian%>'  style='border:solid 1px #000000; color:#666666'/>&nbsp;<input type='button' value='上传' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr><tr><td>性别：</td><td><select name='xingbie' id='xingbie'><option value="男">男</option><option value="女">女</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=xingbie%>';</script><tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=beizhu%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


