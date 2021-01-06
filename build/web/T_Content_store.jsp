<%-- 
    Document   : store
    Created on : Feb 1, 2020, 7:40:51 PM
    Author     : ABC
--%>
<% if (session.getAttribute("user") != null) {
		session.getAttribute("user");
	
			} else {
				response.sendRedirect("Admin_login.jsp");
			}
      %>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{

String title1=request.getParameter("topicN");
String info1=request.getParameter("info");
String query2 = (String) session.getAttribute("Squery");
Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tutorial1","root","1234");
PreparedStatement ps=con.prepareStatement("insert into "+query2+" values(?,?)");

ps.setString(1,title1);
ps.setString(2,info1);

int s=ps.executeUpdate();
System.out.print(s);

}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="T_java.jsp"></jsp:forward>

