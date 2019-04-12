
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
    
    <title>普通管理员详细</title><script language="javascript" src="js/Calendar.js"></script>
	
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	fewgidsoidfjdkgds
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>

  普通管理员详细:
  <br><br>
   <%
  String sql="select * from putongguanliyuan where id="+id;
  String gonghao="";String xingming="";String mima="";String bumen="";String dianhua="";String shenfenzheng="";String zhaopian="";String xingbie="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  gonghao=RS_result.getString("gonghao");xingming=RS_result.getString("xingming");mima=RS_result.getString("mima");bumen=RS_result.getString("bumen");dianhua=RS_result.getString("dianhua");shenfenzheng=RS_result.getString("shenfenzheng");zhaopian=RS_result.getString("zhaopian");xingbie=RS_result.getString("xingbie");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>工号：</td><td width='39%'><%=gonghao%></td><td  rowspan=7 align=center><a href=<%=zhaopian%> target=_blank><img src=<%=zhaopian%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>姓名：</td><td width='39%'><%=xingming%></td></tr><tr><td width='11%' height=44>密码：</td><td width='39%'><%=mima%></td></tr><tr><td width='11%' height=44>部门：</td><td width='39%'><%=bumen%></td></tr><tr><td width='11%' height=44>电话：</td><td width='39%'><%=dianhua%></td></tr><tr><td width='11%' height=44>身份证：</td><td width='39%'><%=shenfenzheng%></td></tr><tr><td width='11%' height=44>性别：</td><td width='39%'><%=xingbie%></td></tr><tr><td width='11%' height=100  >备注：</td><td width='39%' colspan=2 height=100 ><%=beizhu%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


