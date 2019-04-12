
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
    
    <title>部门信息</title><LINK href="css.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
    

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有部门信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;部门：<input name="bumen" type="text" id="bumen" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='bumenxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>部门</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
  int curpage=1;
				int page_record=10;
				int zgs=0;
				int zys=0;
				
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from bumenxinxi";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  zys=zgs/page_record+1;
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));
				}
				else
				{
				curpage=1;
				}
				if (curpage==0)
				{
					curpage=1;
				}
				if(curpage>zys)
				{
					curpage=zys;
				}
   sql="";
  if ((curpage-1)*page_record==0 )
{
  sql="select top 10 * from bumenxinxi where 1=1";
}
else
{
  sql="select top "+page_record+" * from bumenxinxi where id not in (select top "+((curpage-1)*page_record)+" id from bumenxinxi order by id desc) ";
}
  
if(request.getParameter("bumen")=="" ||request.getParameter("bumen")==null ){}else{sql=sql+" and bumen like '%"+new String(request.getParameter("bumen").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String bumen="";
 String addtime="";
 int i=0;
 

 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bumen=RS_result.getString("bumen");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=bumen %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="bumenxinxi_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=bumenxinxi" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table>
<%//yougongzitongji%>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="bumenxinxi_list.jsp?page=1">首页</a>　<a href="bumenxinxi_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="bumenxinxi_list.jsp?page=<%= curpage+1%>">下一页</A>　<a href="bumenxinxi_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>

