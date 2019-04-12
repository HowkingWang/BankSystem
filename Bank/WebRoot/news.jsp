<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>新闻</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><LINK href="qtimages/style.css" type=text/css rel=stylesheet>
</head>
<%
String lb=new String(request.getParameter("lb").getBytes("8859_1"));

%>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table id="__01" width="902" height="177" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" background="qtimages/1_02_01_02_02_01.gif">&nbsp;</td>
    <td width="716" height="177" valign="top" background="qtimages/1_02_01_02_02_02.gif"><p>&nbsp;</p>
    <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#FA9090" class="newsline" style="border-collapse:collapse">
       <tr>
        <td align="center" bgcolor="#FFFF99"><strong>序号</strong></td>
        <td bgcolor="#FFFF99"><strong>标题</strong></td>
        <td bgcolor="#FFFF99"><strong>附件</strong></td>
        <td bgcolor="#FFFF99"><strong>点击次数</strong></td>
        <td align="center" bgcolor="#FFFF99"><strong>发布时间</strong></td>
      </tr>
	  <%
  int curpage=1;
				int page_record=20;
				int zgs=0;
				int zys=0;
				
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from xinwentongzhi where leibie='"+lb+"'";
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
  String sql="";
  sql="select top "+page_record+" * from xinwentongzhi where leibie='"+lb+"' and id not in (select top "+((curpage-1)*page_record)+" id from xinwentongzhi order by id desc) ";
  
if(request.getParameter("keyword")=="" ||request.getParameter("keyword")==null ){}else{sql=sql+" and biaoti like '%"+new String(request.getParameter("keyword").getBytes("8859_1")).trim()+"%'";}
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String biaoti="";String leibie="";String neirong="";String tianjiaren="";String shouyetupian="";String dianjilv="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
biaoti=RS_result.getString("biaoti");leibie=RS_result.getString("leibie");neirong=RS_result.getString("neirong");tianjiaren=RS_result.getString("tianjiaren");shouyetupian=RS_result.getString("shouyetupian");dianjilv=RS_result.getString("dianjilv");
 addtime=RS_result.getString("addtime");
 
 
%>
     
      <tr>
        <td width="31" align="center"><%=i %></td>
        <td width="517"><a href="gg_detail.jsp?id=<%=id%>"><%=biaoti %></a></td>
        <td width="79"><%
		if (shouyetupian==null || shouyetupian.equals("") || shouyetupian.equals("null"))
		{
		%>
          <%
		}
		else
		{
		%>
          <a href='<%=shouyetupian %>' target='_blank'>下载</a>
          <%
		}
	%></td>
        <td width="79"><%=dianjilv %></td>
        <td width="79" align="center"><%=addtime.substring(0,10) %></td>
      </tr>
      <%
  }
   %>
    </table>
        <br>
      以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
      <p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="news.jsp?page=1&lb=<%=lb%>">首页</a>　<a href="news.jsp?page=<%= curpage-1%>&lb=<%=lb%>">上一页</a>　<A href="news.jsp?page=<%= curpage+1%>&lb=<%=lb%>">下一页</A>　<a href="news.jsp?page=<%=zys %>&lb=<%=lb%>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p></td>
    <td width="14" background="qtimages/1_02_01_02_02_03.gif">&nbsp;</td>
  </tr>
</table>
</body>
</html>