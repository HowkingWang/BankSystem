<%@ page contentType="text/html;charset=gb2312" language="java" import="com.jspsmart.upload.*"%>
<%@ page import="com.jspsmart.upload.*"%>
<%@ page import="java.util.*"%>
<%
String path = request.getContextPath();
%>
<%
    
    String newFile1Name=null;
    String file_name=null;
    
	SmartUpload mySmartUpload = new SmartUpload();

	
	mySmartUpload.initialize(pageContext);

	
	try 
	{
		
		mySmartUpload.upload();
	} 
	catch (Exception e)
    {
		
	}
	
	try 
	{
		   com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(0);
		   if (myFile.isMissing())
		   {
			  out.println("<script language=javascript>alert('����ѡ��ͼƬ��');   history.back(-1);</script>");
			  return;

		   } 
		   else 
		   {
			   int file_size = myFile.getSize();  
			   file_name=myFile.getFileName();
			   System.out.println("�ļ���С��"+file_size+"�ļ����ƣ�"+file_name);
			  
                   newFile1Name=new Date().getTime()+file_name.substring(file_name.indexOf("."));
	               System.out.println("���ļ����ƣ�"+newFile1Name);
				
				   String saveurl = request.getSession().getServletContext().getRealPath("upload");
				
				   saveurl = saveurl+"/"+newFile1Name;
				   myFile.saveAs(saveurl, mySmartUpload.SAVE_PHYSICAL);
	
             
			} 
	  } 
	  catch (Exception e)
	  {
	    e.toString();
	  }
%>

<script language="javascript">

    var str=location.toString()
    var Result=((((str.split('?'))[1]).split('='))[1]);
		
	window.parent.document.getElementById(Result).value="upload/<%= newFile1Name%>";					

    
	
	document.write("�ϴ��ɹ�");
    

</script> 