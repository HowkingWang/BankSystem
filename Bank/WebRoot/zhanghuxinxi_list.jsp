
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
    
    <title>�ʻ���Ϣ</title><LINK href="css.css" type=text/css 
rel=stylesheet>
    

  </head>

  <body >
  <p>�����ʻ���Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="zhanghuxinxi_list.jsp">
   ����:�ʺ�:
     <input name="bianhao" type="text" id="bianhao" />
     ����
 
     <input name="mingcheng" type="text" id="mingcheng" />
     ���֤
 
     <input name="sfz" type="text" id="sfz" />
     <input type="submit" name="Submit" value="����" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�ʺ�</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>�Ա�</td><td bgcolor='#CCFFFF'>���֤</td><td bgcolor='#CCFFFF'>��ַ</td><td bgcolor='#CCFFFF'>���</td><td bgcolor='#CCFFFF'>״̬</td><td bgcolor='#CCFFFF'>��ע</td>
    <td width="135" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <%
  String sql="";
  sql="select * from zhanghuxinxi where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and zhanghao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null )
  {}
  else
  {
  	sql=sql+" and xingming like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
    if(request.getParameter("sfz")=="" ||request.getParameter("sfz")==null )
  {}
  else
  {
  	sql=sql+" and shenfenzheng like '%"+new String(request.getParameter("sfz").getBytes("8859_1"))+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String zhanghao="";String mima="";String xingming="";String xingbie="";String shenfenzheng="";String dizhi="";String yue="";String zhuangtai="";String beizhu="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
zhanghao=RS_result.getString("zhanghao");mima=RS_result.getString("mima");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");shenfenzheng=RS_result.getString("shenfenzheng");dizhi=RS_result.getString("dizhi");yue=RS_result.getString("yue");zhuangtai=RS_result.getString("zhuangtai");beizhu=RS_result.getString("beizhu");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=zhanghao %></td><td><%=mima %></td><td><%=xingming %></td><td><%=xingbie %></td><td><%=shenfenzheng %></td><td><%=dizhi %></td><td><%=yue %></td><td><%=zhuangtai %></td><td><%=beizhu %></td>
    <td width="135" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="zhanghuxinxi_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=zhanghuxinxi" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
  </body>
</html>

