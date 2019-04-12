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
    <title>用户登录</title>
<style type="text/css">

body {
	background-image: url(admin/bg.gif);
	margin: 0px;
	background-repeat: repeat-x;
}
table,td{
font-family:"宋体";
font-size:12px;
}
.inputtext{
border-left:1px solid balck;
border-right:1px solid balck;
border-top:1px solid balck;
border-bottom:1px solid balck;
}
.loginbg {
font-size: 12px;
width: 59px;
height: 26px;
background-image: url(admin/login_bg.gif);
border: none;
padding-top: 3px;
color:white;
}
</style>

  </head>
<form method=post action="adminyanzheng.jsp">
<table width="100%" height="98" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>　</td>
  </tr>
</table>
<table width="50%" align="center" height="34" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
              <div align="center" class="STYLE5">银行管理系统</div>
            </div></td>
  </tr>
</table>
<table width="100%" height="30" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>　</td>
  </tr>
</table>
<div align="center">
  <map name="mapMap">
    <area shape="rect" coords="348,1,436,39" href="../">
  </map>
  <table width="100%" border="0">
    <tr>
      <td height="284"><table width="457" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="3"><img src="admin/admin_05.gif" width="457" height="40" border="0"></td>
        </tr>
        <tr>
          <td width="142" rowspan="3"><img src="admin/admin_07.gif" width="142" height="221"></td>
          <td width="240" valign="top"><img src="admin/admin_08.gif" width="240" height="42"></td>
          <td width="75" rowspan="3"><img src="admin/admin_09.gif" width="75" height="221"></td>
        </tr>
        <tr>
          <td height="107" valign="top" background="admin/admin_10.gif"><table width="75%"  align="center" height="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="24%" height="30">用&nbsp;&nbsp;户:</td>
                <td width="76%" height="30"><input name="username" type="text" class="inputtext" id="username" size="15"></td>
              </tr>
              <tr>
                <td height="25">密&nbsp;&nbsp;码:</td>
                <td height="25"><input name="pwd" type="password" class="inputtext" id="pwd" size="15"></td>
              </tr>
              <tr>
                <td height="25">角&nbsp;&nbsp;色:</td>
                <td height="25"><select name="cx" id="cx">
                  <option value="超级管理员">超级管理员</option>
				  <option value="普通管理员">普通管理员</option>
                  <option value="普通帐户">普通帐户</option>
                </select>
                </td>
              </tr>
              <tr>
                <td height="25" colspan="2"><p align="center">
                    <input name="submit" type="submit" class="loginbg" id="submit" value="登 陆">
                  &nbsp;&nbsp;
                  <input name="submit2" type="reset" class="loginbg" id="submit2" value="取 消">
                      </td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td width="240" height="72" align="center" valign="middle" background="admin/admin_11.gif"><a href="zmm.jsp">找回密码</a></td>
        </tr>
      </table>
        </td>
    </tr>
  </table>
</div>
 </form>
<map name="map"><area shape="rect" coords="348,1,436,39" href="../"></map>
  </body>
</html>

