<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

<%
   
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
    String id, userpict,fieldName="",fileName="";
     
	//Cookie cookieobject[]=request.getCookies();  
    // id = cookieobject[0].getValue();
	   id = (String) session.getAttribute("uid");
	   
	   out.println("<h2>User ID  First : " + id + "</h2>");
	 
   String filePath = "c:/xampp/tomcat/webapps/Smartcampus/UserImages/";

   String contentType = request.getContentType();
   out.print("<h2>"+contentType+"<h2>");
   if ((contentType.indexOf("multipart/form-data") >= 0)) {

      DiskFileItemFactory factory = new DiskFileItemFactory();
      factory.setSizeThreshold(maxMemSize);
      factory.setRepository(new File("c:\\temp"));
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setSizeMax( maxFileSize );
      try{ 
         List fileItems = upload.parseRequest(request);
         Iterator i = fileItems.iterator();
         while ( i.hasNext () ) 
         {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () )  {
                 fieldName = fi.getFieldName();
                 fileName = fi.getName();
				 userpict=fileName;
                boolean isInMemory = fi.isInMemory();
                long sizeInBytes = fi.getSize();
                file = new File( filePath + fileName) ;
                fi.write( file ) ;
				  out.print("<h2>"+fieldName+"<h2>");
				  out.print("<h2>"+ fileName+"<h2>");
                  out.println("<h1>Uploaded Filename: " + filePath + fileName + "</h1>");
				//fi.close(file);
            }
         }
        
      }catch(Exception ex) 
	  {
         out.println("ex");
      }
   }
   
 
	
	    
	 try
	 { userpict=fileName;
	
	   %>	   
		<%@ include file="ConnectionDBF.jsp"%>
	  <%	
		
		PreparedStatement ps = con.prepareStatement("update  users set userPicture = ?  where Grno = ?");
		  ps.setString(1,userpict);
		  ps.setString(2,id);
		
		
		 
	
	     int x = ps.executeUpdate();
		  out.println("<h2>User ID : " + id + "</h2>");
		
		 out.println("<h2>Picture : " + userpict + "</h2>");
		 out.println("<h2>Record Have Been Updated </h2>");
		 
		
	      con.close();
		  session.setAttribute("upicture",userpict); 
		   out.print("<script> window.open('information.jsp','_self'); </script>");
	 }
	 catch(Exception e)
	 {
	 out.println("<h2 style='color:red'>MySQL Database Not Connected Error: "+e+"</h1>");
	 }
  
%>





 
 