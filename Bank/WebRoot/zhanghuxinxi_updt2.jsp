
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
    
    <title>帐户信息</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.zhanghao.value==""){alert("请输入帐号");document.form1.zhanghao.focus();return false;}if(document.form1.mima.value==""){alert("请输入密码");document.form1.mima.focus();return false;}if(document.form1.xingming.value==""){alert("请输入姓名");document.form1.xingming.focus();return false;}if(document.form1.shenfenzheng.value==""){alert("请输入身份证");document.form1.shenfenzheng.focus();return false;}if(document.form1.yue.value==""){alert("请输入余额");document.form1.yue.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="zhanghuxinxi_updt_post.jsp?id=<%=id %>">
  查询余额:
  <br>
  <br>
  <%
  String sql="select * from zhanghuxinxi where zhanghao='"+request.getSession().getAttribute("username")+"'";
  String zhanghao="";String mima="";String xingming="";String xingbie="";String shenfenzheng="";String dizhi="";String yue="";String zhuangtai="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  zhanghao=RS_result.getString("zhanghao");mima=RS_result.getString("mima");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");shenfenzheng=RS_result.getString("shenfenzheng");dizhi=RS_result.getString("dizhi");yue=RS_result.getString("yue");zhuangtai=RS_result.getString("zhuangtai");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>帐号：</td><td><input name='zhanghao' type='text' id='zhanghao' size='50' value='<%=zhanghao%>' /></td></tr><tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= xingming%>' /></td></tr><tr><td>余额：</td><td><input name='yue' type='text' id='yue' value='<%= yue%>' /></td></tr>
  </table>
</form>

  </body>
</html>


