<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312" session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title><link href="admin/myweb.css" rel="stylesheet" type="text/css">

<style type="text/css">
body {
	background-image: url(admin/left_bg.gif);
}
.STYLE1 {color: #000000; line-height:22px;}
.STYLE2 {color: #FF0000}
.STYLE3 {color: #0000FF}
</style>
<script language="javascript">
var old='';
function menu(name)
{
	submenu=eval("submenu_"+name+".style");
	if(old!=submenu)
	{
		if(old!='')
		{
				old.display='none';
		}
		submenu.display='block';
		old=submenu;
	}
	else
	{
		submenu.display='none';
		old='';
	}
}
</script>

<TABLE cellSpacing="0" cellPadding="0" width="180" align="center">
  <TR >
    <TD  background="admin/menu_bg.gif" height="36" class="menu_title" onClick="menu(0);" style="CURSOR:hand">
<span class="font_span">个人资料管理</span></TD>
  </TR>
  <TR>
    <TD background="admin/left_bg.gif" class="myweb_td" id=submenu_0 style="DISPLAY: none;"><TABLE width="90%" align="center">
      <TR>
        <TD height="22" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#ffffff'"><img src="admin/icon.gif"> <a href="putongguanliyuan_updt2.jsp" target="main">个人资料管理</a> </TD>
      </TR>
      

    </TABLE></TD>
</TR>
</TABLE>




<TABLE cellSpacing="0" cellPadding="0" width="180" align="center">
  <TR >
    <TD  background="admin/menu_bg.gif" height="36" class="menu_title" onClick="menu(1);" style="CURSOR:hand">
<span class="font_span">帐户管理</span></TD>
  </TR>
  <TR>
    <TD background="admin/left_bg.gif" class="myweb_td" id=submenu_1 style="DISPLAY: none;"><TABLE width="90%" align="center">
      <TR>
        <TD height="22" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#ffffff'"><img src="admin/icon.gif"> <a href="zhanghuxinxi_add.jsp" target="main">帐户添加</a><a href="admin_info.asp" target="main"></a></TD>
      </TR>
      <TR>
        <TD height="22" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#ffffff'"><img src="admin/icon.gif"> <a href="zhanghuxinxi_list.jsp" target="main">帐户查询</a><a href="classmanage.asp" target="main"></a></TD>
      </TR>
            
    </TABLE></TD>
</TR>
</TABLE>
<TABLE cellSpacing="0" cellPadding="0" width="180" align="center">
  <TR >
    <TD  background="admin/menu_bg.gif" height="36" class="menu_title" onClick="menu(2);" style="CURSOR:hand">
<span class="font_span">挂失管理</span></TD>
  </TR>
  <TR>
    <TD background="admin/left_bg.gif" class="myweb_td" id=submenu_2 style="DISPLAY: none;">
	<TABLE width="90%" align="center">
  
	 <TR>
	   <TD height="22" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#ffffff'"><img src="admin/icon.gif"> <a href="zhanghuxinxi_list2.jsp" target="main">挂失管理</a></TD>
	   </TR>
    </TABLE></TD>
</TR>
</TABLE>
<TABLE cellSpacing="0" cellPadding="0" width="180" align="center">
  <TR >
    <TD  background="admin/menu_bg.gif" height="36" class="menu_title" onClick="menu(3);" style="CURSOR:hand">
<span class="font_span">交易记录管理</span></TD>
  </TR>
  <TR>
   <TD background="admin/left_bg.gif" class="myweb_td" id=submenu_3 style="DISPLAY: none;">
	<TABLE width="90%" align="center">
       <TR>
        <TD height="22" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#ffffff'"><img src="admin/icon.gif">  <a href="zhuanzhangjilu_list.jsp" target="main">交易记录查看</a></TD>
      </TR>
    </TABLE></TD>
</TR>
</TABLE>


       