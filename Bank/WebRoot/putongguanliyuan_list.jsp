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
    <title>��ͨ����Ա</title><LINK href="css.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
  </head>
  <%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>������ͨ����Ա�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:&nbsp;&nbsp;���ţ�<input name="gonghao" type="text" id="gonghao" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;������<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  ���ţ�<select name='bumen' id='bumen'><option value="">����</option><% sql="select bumen from bumenxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("bumen")%>" ><%=RS_result.getString("bumen")%></option><%}%></select>&nbsp;&nbsp;�绰��<input name="dianhua" type="text" id="dianhua" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;���֤��<input name="shenfenzheng" type="text" id="shenfenzheng" style='border:solid 1px #000000; color:#666666' size="12" /> �Ա�<select name="xingbie" id="xingbie"><option value="">����</option><option value="��">��</option><option value="Ů">Ů</option></select>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='putongguanliyuan_listxls.jsp';" />
</form>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>�绰</td><td bgcolor='#CCFFFF'>���֤</td><td bgcolor='#CCFFFF' width='90' align='center'>��Ƭ</td><td bgcolor='#CCFFFF' width='40' align='center'>�Ա�</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
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
    <td width="90" align="center"><a href="putongguanliyuan_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=putongguanliyuan" onclick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="putongguanliyuan_detail.jsp?id=<%=id%>">��ϸ</a></td>
  </tr>
  	<%
  }
   %>
</table>
<%//yougongzitongji%>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onclick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="putongguanliyuan_list.jsp?page=1">��ҳ</a>��<a href="putongguanliyuan_list.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="putongguanliyuan_list.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="putongguanliyuan_list.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
  </body>
</html>
