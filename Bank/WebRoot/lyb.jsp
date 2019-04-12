<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
<head>
<title>在线留言</title><LINK href="css.css" type=text/css rel=stylesheet>
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
<script language="javascript">
function checklyb()
{
	if(document.formlyb.cheng.value=="")
	{
		alert("请输入昵称");
		document.formlyb.cheng.focus();
		return false;
	}
	if(document.formlyb.neirong.value=="")
	{
		alert("请输入留言内容");
		document.formlyb.neirong.focus();
		return false;
	}
	if(document.formlyb.youxiang.value!="")
	{
		var strEmail = document.getElementById("youxiang").value;		
		var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
		var email_Flag = reg.test(strEmail);
		if(email_Flag){
		
		}
		else{
			alert("对不起，您输入的邮箱地址格式错误。");
			return false;
		}
	}
	if(document.formlyb.QQ.value!="")
	{
		var strQQ = document.getElementById("QQ").value;		
		var regQQ = /^[1-9]\d{4,8}$/;
		var qq_Flag =  regQQ.test(strQQ);
		if(qq_Flag){
		
		}else{
			alert("对不起，您输入的QQ号码格式错误。");
			return false;
		}
	}
	if(document.formlyb.dianhua.value!="")
	{
		var strPhone = document.getElementById("dianhua").value; 
		var reg = /^(138|139|151|189)\d{8}$/;
		phone_Flag = reg.test(strPhone);
		if(phone_Flag){
		}else{
		alert("对不起，您输入的电话号码格式错误。");
		return false;
		}
	}
}



</script>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="785" height="830" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
  <tr>
    <td valign="top"><table width="785" height="833" border="0" cellpadding="0" cellspacing="0" id="__01">
      <tr>
        <td width="785" height="40" background="qtimages/1_02_02_02_01.jpg"><table width="100%" height="19" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="12%" align="center" valign="bottom"><span class="STYLE1">留言板</span></td>
            <td width="74%" valign="bottom">&nbsp;</td>
            <td width="14%" valign="bottom" ><a href="lyblist.jsp"><font class="STYLE1">查看已有留言</font></a></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="760" valign="top"><table id="__01" width="785" height="100%" border="0" cellpadding="0" cellspacing="0" >
          <tr>
            <td width="19" background="qtimages/1_02_02_02_02_01.jpg">&nbsp;</td>
            <td width="737" height="176" valign="top"><form name="formlyb" method="post" action="liuyanban_add_post.jsp">
              <table width="92%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#AAE4D5" style="border-collapse:collapse">
                <tr>
                  <td width="12%">昵称：</td>
                  <td width="88%"><input name='cheng' type='text' id='cheng' value='' />
                    *</td>
                </tr>
                <tr>
                  <td>头像：</td>
                  <td><input name="xingbie" type="radio" value="1" checked>
                            <img src="img/001.jpg" width="64" height="71">
                            <input type="radio" name="xingbie" value="2">
                            <img src="img/02.jpg" width="64" height="71">
                            <input type="radio" name="xingbie" value="3">
                            <img src="img/9538a9d3fd1f41349c634034231f95cad0c85ecd.jpg" width="64" height="71">
                            <input type="radio" name="xingbie" value="4">
                            <img src="img/04.jpg" width="64" height="71">
                            <input type="radio" name="xingbie" value="5">
                            <img src="img/03.jpg" width="64" height="71"></td>
                </tr>
                <tr>
                  <td>QQ：</td>
                  <td><input name='QQ' type='text' id='QQ' value='' /></td>
                </tr>
                <tr>
                  <td>邮箱：</td>
                  <td><input name='youxiang' type='text' id='youxiang' value='' /></td>
                </tr>
                <tr>
                  <td>电话：</td>
                  <td><input name='dianhua' type='text' id='dianhua' value='' /></td>
                </tr>
                <tr>
                  <td>内容：</td>
                  <td><textarea name="neirong" cols="50" rows="10" id="neirong"></textarea>
                    *</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><input type="submit" name="Submit42" value="提交" onClick="return checklyb();" style=" height:19px; border:solid 1px #000000; color:#666666" />
                            <input type="reset" name="Submit22" value="重置" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                </tr>
              </table>
            </form>
                    <p align="center">&nbsp;</p></td>
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
</html>