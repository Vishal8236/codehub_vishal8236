<%-- 
    Document   : U_C_Upload_File
    Created on : 21 Mar, 2020, 12:20:08 PM
    Author     : Akshay Patidar
--%>

<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String u_id =(String) session.getAttribute("user");
      
       //select language
       String language = (String) session.getAttribute("languagename");
       
       //repository name
       String rname = (String) session.getAttribute("selectrepo");
       String UPLOAD_DIRECTORY = "D:\\my project codehub\\abc\\web\\User Code Repository\\"+u_id+"\\"+language+"\\"+rname+"";
        //process only if its multipart content
        if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                                         new DiskFileItemFactory()).parseRequest(request);
               
                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                        item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
                    }
                }
            
               //File uploaded successfully
               request.setAttribute("message", "File Uploaded Successfully");
            } catch (Exception ex) {
               request.setAttribute("message", "File Upload Failed due to " + ex);
            }          
          
        }else{
            request.setAttribute("message",
                                 "Sorry this Servlet only handles file upload request");
        }
     
        request.getRequestDispatcher("U_C_Show_Files_Repository.jsp").forward(request, response);
 
        %>
    </body>
</html>
