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
<span class="font_span">�����������</span></TD>
  </TR>
  <TR>
    <TD background="admin/left_bg.gif" class="myweb_td" id=submenu_0 style="DISPLAY: none;"><TABLE width="90%" align="center">
      <TR>
        <TD height="22" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#ffffff'"><img src="admin/icon.gif"> <a href="mod.jsp" target="main">�����������</a> </TD>
      </TR>
      

    </TABLE></TD>
</TR>
</TABLE>

<TABLE cellSpacing="0" cellPadding="0" width="180" align="center">
  <TR >
    <TD  background="admin/menu_bg.gif" height="36" class="menu_title" onClick="menu(11);" style="CURSOR:hand">
<span class="font_span">��ͨ����Ա����</span></TD>
  </TR>
  <TR>
    <TD background="admin/left_bg.gif" class="myweb_td" id=submenu_11 style="DISPLAY: none;"><TABLE width="90%" align="center">
      <TR>
        <TD height="22" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#ffffff'"><img src="admin/icon.gif"> <a href="bumenxinxi_add.jsp" target="main">������Ϣ���</a> </TD>
      </TR>
      <TR>
        <TD height="22" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#ffffff'"><img src="admin/icon.gif"> <a href="bumenxinxi_list.jsp" target="main">������Ϣ��ѯ</a> </TD>
      </TR>
	  <TR>
        <TD height="22" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#ffffff'"><img src="admin/icon.gif"> <a href="putongguanliyuan_add.jsp" target="main">��ͨ����Ա���</a> </TD>
      </TR>
      <TR>
        <TD height="22" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#ffffff'"><img src="admin/icon.gif"> <a href="putongguanliyuan_list.jsp" target="main">��ͨ����Ա��ѯ</a> </TD>
      </TR>
    </TABLE></TD>
</TR>
</TABLE>




</TR>
</TABLE>

</TR>
</TABLE>

 
<TABLE cellSpacing="0" cellPadding="0" width="180" align="center">
  <TR >
    <TD  background="admin/menu_bg.gif" height="36" class="menu_title" onClick="menu(4);" style="CURSOR:hand">
<span class="font_span">���Ź������</span></TD>
  </TR>
  <TR>
    <TD background="admin/left_bg.gif" class="myweb_td" id=submenu_4 style="DISPLAY: none;">
	<TABLE width="90%" align="center">
  
	 <TR>
        <TD height="22" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#ffffff'"><img src="admin/icon.gif">  <a href="xinwentongzhi_add.jsp?lb=���Ź���" target="main">���Ź������</a></TD>
      </TR>
	   <TR>
        <TD height="22" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#ffffff'"><img src="admin/icon.gif">  <a href="xinwentongzhi_list.jsp?lb=���Ź���" target="main">���Ź����ѯ</a></TD>
      </TR>
    </TABLE></TD>
</TR>
</TABLE>
<TABLE cellSpacing="0" cellPadding="0" width="180" align="center">
  <TR >
    <TD  background="admin/menu_bg.gif" height="36" class="menu_title" onClick="menu(6);" style="CURSOR:hand">
<span class="font_span">���Թ���</span></TD>
  </TR>
  <TR>
    <TD background="admin/left_bg.gif" class="myweb_td" id=submenu_6 style="DISPLAY: none;">
	<TABLE width="90%" align="center">
  
	 <TR>
        <TD height="22" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#ffffff'"><img src="admin/icon.gif">  <a href="liuyanban_list.jsp" target="main">���Թ���</a></TD>
      </TR>
	  
    </TABLE></TD>
</TR>
</TABLE>
