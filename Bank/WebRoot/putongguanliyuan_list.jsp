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
    <title>普通管理员</title><LINK href="css.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
  </head>
  <%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有普通管理员列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;工号：<input name="gonghao" type="text" id="gonghao" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  部门：<select name='bumen' id='bumen'><option value="">所有</option><% sql="select bumen from bumenxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("bumen")%>" ><%=RS_result.getString("bumen")%></option><%}%></select>&nbsp;&nbsp;电话：<input name="dianhua" type="text" id="dianhua" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;身份证：<input name="shenfenzheng" type="text" id="shenfenzheng" style='border:solid 1px #000000; color:#666666' size="12" /> 性别：<select name="xingbie" id="xingbie"><option value="">所有</option><option value="男">男</option><option value="女">女</option></select>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='putongguanliyuan_listxls.jsp';" />
</form>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>工号</td><td bgcolor='#CCFFFF'>姓名</td><td bgcolor='#CCFFFF'>密码</td><td bgcolor='#CCFFFF'>部门</td><td bgcolor='#CCFFFF'>电话</td><td bgcolor='#CCFFFF'>身份证</td><td bgcolor='#CCFFFF' width='90' align='center'>照片</td><td bgcolor='#CCFFFF' width='40' align='center'>性别</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
   int curpage=1;
				int page_record=10;
				int zgs=0;
				int zys=0;
				
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from putongguanliyuan";
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
  sql="select top 10 * from putongguanliyuan where 1=1";
}
else
{
  sql="select top "+page_record+" * from putongguanliyuan where id not in (select top "+((curpage-1)*page_record)+" id from putongguanliyuan order by id desc) ";
}
  
  if(request.getParameter("gonghao")=="" ||request.getParameter("gonghao")==null ){}else{sql=sql+" and gonghao like '%"+new String(request.getParameter("gonghao").getBytes("8859_1"))+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+new String(request.getParameter("xingming").getBytes("8859_1"))+"%'";}if(request.getParameter("bumen")=="" ||request.getParameter("bumen")==null ){}else{sql=sql+" and bumen like '%"+new String(request.getParameter("bumen").getBytes("8859_1"))+"%'";}if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+new String(request.getParameter("dianhua").getBytes("8859_1"))+"%'";}if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+new String(request.getParameter("shenfenzheng").getBytes("8859_1"))+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+new String(request.getParameter("xingbie").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String gonghao="";String xingming="";String mima="";String bumen="";String dianhua="";String shenfenzheng="";String zhaopian="";String xingbie="";String beizhu="";
 String addtime="";
 int i=0;
  
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
gonghao=RS_result.getString("gonghao");xingming=RS_result.getString("xingming");mima=RS_result.getString("mima");bumen=RS_result.getString("bumen");dianhua=RS_result.getString("dianhua");shenfenzheng=RS_result.getString("shenfenzheng");zhaopian=RS_result.getString("zhaopian");xingbie=RS_result.getString("xingbie");beizhu=RS_result.getString("beizhu");
 addtime=RS_result.getString("addtime");
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=gonghao %></td><td><%=xingming %></td><td><%=mima %></td><td><%=bumen %></td><td><%=dianhua %></td><td><%=shenfenzheng %></td><td width='90'><a href='<%=zhaopian %>' target='_blank'><img src='<%=zhaopian %>' width=88 height=99 border=0 /></a></td><td align='center'><%=xingbie %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="90" align="center"><a href="putongguanliyuan_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=putongguanliyuan" onclick="return confirm('真的要删除？')">删除</a> <a href="putongguanliyuan_detail.jsp?id=<%=id%>">详细</a></td>
  </tr>
  	<%
  }
   %>
</table>
<%//yougongzitongji%>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onclick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="putongguanliyuan_list.jsp?page=1">首页</a>　<a href="putongguanliyuan_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="putongguanliyuan_list.jsp?page=<%= curpage+1%>">下一页</A>　<a href="putongguanliyuan_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>
