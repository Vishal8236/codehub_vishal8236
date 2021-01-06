<%-- 
    Document   : Delete_User_Account
    Created on : 6 Feb, 2020, 7:15:28 PM
    Author     : Akshay Patidar
--%>

<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="javax.servlet.http.Part"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
           
               String email3 = request.getParameter("email4");
             
               
               String connectionURL = "jdbc:mysql://localhost:3306/project";
               String user = "root";
               String pass = "1234";
 
               Connection con = null;
 
             try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
    
                    PreparedStatement ps = con.prepareStatement("delete from user_site_info where email='"+email3+"'");                    
                   
                    int s=ps.executeUpdate();
                    System.out.print(s);
                    RequestDispatcher rd=request.getRequestDispatcher("User_details_view.jsp");  
                    rd.forward(request, response);
                }
             catch(SQLException e2)
             {
                e2.printStackTrace();
             }
%>
<jsp:forward page="Select_Language.jsp"></jsp:forward>
