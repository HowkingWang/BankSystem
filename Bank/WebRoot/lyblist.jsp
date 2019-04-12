<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
<head>
<title>查看留言</title><LINK href="css.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
.STYLE1 {
	color: #529915;
	font-weight: bold;
}
.STYLE4 {color: #FFFFFF; font-weight: bold; }
-->
</style>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="785" height="830" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
  <tr>
    <td valign="top"><table width="785" height="833" border="0" cellpadding="0" cellspacing="0" id="__01">
      <tr>
        <td width="785" height="40" background="qtimages/1_02_02_02_01.jpg"><table width="100%" height="19" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="12%" align="center" valign="bottom"><span class="STYLE1">留言板</span></td>
            <td width="74%" valign="bottom">&nbsp;</td>
            <td width="14%" valign="bottom" ><a href="lyb.jsp"><font class="STYLE1">我要留言</font></a></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="760" valign="top"><table id="__01" width="785" height="100%" border="0" cellpadding="0" cellspacing="0" >
          <tr>
            <td width="19" background="qtimages/1_02_02_02_02_01.jpg">&nbsp;</td>
            <td width="737" height="176" valign="top"><p align="center">
              <%
    int curpage=1;
				int page_record=3;
				int zgs=0;
				int zys=0;
				
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from liuyanban";
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
				//out.print(curpage);
				String sql;
				if (curpage==1)
				{
				sql="select top "+page_record+" * from liuyanban";
				}
				else
				{
				sql="select top "+page_record+" * from liuyanban where id not in (select top "+((curpage-1)*page_record)+" id from liuyanban order by id desc) ";
				}
				
				  sql=sql+" order by id desc";
				  


  ResultSet RS_result=connDbBean.executeQuery(sql);
  String id="";
 String nicheng="";String xingbie="";String QQ="";String youxiang="";String dianhua="";String neirong="";String huifuneirong="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
nicheng=RS_result.getString("cheng");xingbie=RS_result.getString("xingbie");QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");dianhua=RS_result.getString("dianhua");neirong=RS_result.getString("neirong");huifuneirong=RS_result.getString("huifuneirong");
 addtime=RS_result.getString("addtime");
 
 
%>
            </p>
                    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#AAE4D5" class="tb">
                      <!--DWLayoutTable-->
                      <tr>
                        <td width="85" rowspan="4" align="center" valign="middle" bgcolor="#FFFFFF"><img width='70'height='70' src=img/<%=xingbie %>.gif border=0> </td>
                        <td height="20" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp; &nbsp; 留言于:<%=addtime%> &nbsp;</td>
                      </tr>
                      <tr>
                        <td height="78" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;<%=neirong%></td>
                      </tr>
                      <tr>
                        <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;昵称：<%=nicheng%> &nbsp; &nbsp;电话：<%=dianhua %>&nbsp;&nbsp;邮 箱:<%=youxiang%> &nbsp; QQ:<%=QQ%>&nbsp; &nbsp; </td>
                      </tr>
                      <tr>
                        <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;管理员回复：<%=huifuneirong%></td>
                      </tr>
                    </table>
              <%}%>
                    <p align="center">&nbsp;&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="lyblist.jsp?page=1">首页</a>　<a href="lyblist.jsp?page=<%= curpage-1%>">上一页</a>　<A 
                        
                        href="lyblist.jsp?page=<%= curpage+1%>">下一页</A>　<a href="lyblist.jsp?page=<%=zys %>">尾页</A>　当前第<FONT 
                        color=red><%=curpage %></FONT>页/共<FONT 
                        color=red><%=zys %></FONT>页</p></td>
            <td width="29" background="qtimages/1_02_02_02_02_03.jpg">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="12"><img src="qtimages/1_02_02_02_03.jpg" width="785" height="12" alt=""></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="13"><img src="qtimages/1_02_02_04.jpg" width="785" height="13" alt=""></td>
  </tr>
</table>
</body>
