
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
    
    <title>ת�ʼ�¼</title><LINK href="css.css" type=text/css 
rel=stylesheet>
    

  </head>

  <body >
  <p>�ҵĽ��׼�¼�б�</p>
  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td width="172" bgcolor='#CCFFFF'>ת���ʺ�</td><td width="172" bgcolor='#CCFFFF'>ת���˺�</td><td width="172" bgcolor='#CCFFFF'>ת�ʽ��</td><td width="96" bgcolor='#CCFFFF'>��ע</td>
    <td width="82" align="center" bgcolor="CCFFFF">����</td>
    <td width="188" align="center" bgcolor="CCFFFF">���ʱ��</td>
    </tr>
  <%
  String sql="";
  sql="select * from zhuanzhangjilu where 1=1";

  	sql=sql+" and (zhuanchuzhanghao like '%"+request.getSession().getAttribute("username")+"%' or zhuanruzhanghao like '%"+request.getSession().getAttribute("username")+"%' )";


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
    </tr>
  	<%
  }
   %>
</table>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
  </body>
</html>

