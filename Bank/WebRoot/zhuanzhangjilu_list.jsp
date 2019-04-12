
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
    
    <title>转帐记录</title><LINK href="css.css" type=text/css 
rel=stylesheet>
    

  </head>

  <body >
  <p>已有交易记录列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:帐号:
     <input name="bianhao" type="text" id="bianhao" />
     <input type="submit" name="Submit" value="查找" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td width="172" bgcolor='#CCFFFF'>转出帐号</td><td width="172" bgcolor='#CCFFFF'>转入账号</td><td width="172" bgcolor='#CCFFFF'>转帐金额</td><td width="96" bgcolor='#CCFFFF'>备注</td>
    <td width="82" align="center" bgcolor="CCFFFF">类型</td>
    <td width="188" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
  String sql="";
  sql="select * from zhuanzhangjilu where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and (zhuanchuzhanghao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%' or zhuanruzhanghao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%' )";
  }

  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String zhuanchuzhanghao="";String zhuanruzhanghao="";String zhuanzhangjine="";String beizhu="";
 String addtime=""; String leixing="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
zhuanchuzhanghao=RS_result.getString("zhuanchuzhanghao");zhuanruzhanghao=RS_result.getString("zhuanruzhanghao");zhuanzhangjine=RS_result.getString("zhuanzhangjine");beizhu=RS_result.getString("beizhu");
 addtime=RS_result.getString("addtime"); leixing=RS_result.getString("leixing");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=zhuanchuzhanghao %></td><td><%=zhuanruzhanghao %></td><td><%=zhuanzhangjine %></td><td><%=beizhu %></td>
    <td width="82" align="center"><%=leixing %></td>
    <td width="188" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="zhuanzhangjilu_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=zhuanzhangjilu" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
  </body>
</html>

