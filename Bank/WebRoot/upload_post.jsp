
<%@ page contentType="text/html;charset=GBK"%>
<%@ page import="java.util.*"%>
<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<%
//--- �ϴ�ģ�� ---
String SystemURL			= "http://" + request.getHeader("host") + "/myshop/";

String UploadFolder			= "upload_img";													//����ϴ�ͼƬ���ļ���
int MaxFileSize				= 1024 * 300;													//�����ϴ�ͼƬ�Ĵ�С
String UploadFolder2		= "images";														//����ϴ�����ͼƬ���ļ���
int MaxFileSize2			= 1024 * 300;													//�����ϴ�����ͼƬ�Ĵ�С

String tb_shop_catalog			= "shop_catalog";											//��������
String tb_shop_product_info		= "shop_product_info";										//��Ʒ��Ϣ
String tb_gbook_info			= "shop_gbook_info";
String tb_member_info			= "shop_member_info";
String tb_member_favorite		= "shop_member_favorite";
String tb_news_imgs				= "shop_news_imgs";
String tb_news_info				= "shop_news_info";
String tb_news_type				= "shop_news_type";
String tb_orders_main			= "shop_orders_main";
String tb_orders_r_info			= "shop_orders_r_info";
String tb_shop_admin			= "shop_admin";
String TimeStamp=java.lang.String.valueOf((new Date()).getTime());
String Msg = null;

mySmartUpload.initialize(pageContext);
mySmartUpload.upload();
com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(0);

if (myFile.getFileExt().equals("jpg") || myFile.getFileExt().equals("gif"))
	if (myFile.getSize() < MaxFileSize)
		if (!myFile.isMissing()) {
			String path = request.getRealPath(".");
			myFile.saveAs(path + "/../../" + UploadFolder + "/" + TimeStamp + "."+myFile.getFileExt());
			Msg = "�ϴ��ɹ���";
			session.putValue("NewImgName",TimeStamp + "." + myFile.getFileExt());

		}
		else {
			Msg = "�ϴ����ɹ���[<a href=javascript:history.back()>����</a>]";
		}
	else {
		Msg = "�������[<a href=javascript:history.back()>����</a>]";
	}
else {
	Msg = "�������ϴ������ļ���[<a href=javascript:history.back()>����</a>]";
}
out.print("<font size=2>" + Msg + "</font>");
%>
<body bgcolor="eeeeee">
</body>