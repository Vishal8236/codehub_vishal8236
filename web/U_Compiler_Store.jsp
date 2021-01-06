<%-- 
    Document   : U_Compiler_Store
    Created on : 5 Apr, 2020, 10:04:27 PM
    Author     : Akshay Patidar
--%>

<%@page import="java.io.FileWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String data = request.getParameter("codebox");
            String classN = request.getParameter("classname");
            String file = application.getRealPath("C:\\notes\\")+"test.txt";
            
            FileWriter fw = new FileWriter(file,true);
            fw.write(data);
            fw.close();
        %>
    </body>
</html>
