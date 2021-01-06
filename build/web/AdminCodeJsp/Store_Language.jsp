<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="javax.servlet.http.Part"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{
FileInputStream fis = null;
String NewLanguage=request.getParameter("languageEnter");
String img = request.getParameter("languageLogo"); 
File file1 = new File(img); 
        
Class.forName("com.mysql.jdbc.Driver");
                
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","1234");

PreparedStatement ps=con.prepareStatement("insert into codelanguage values(?,?)");

ps.setString(1,NewLanguage);


fis = new FileInputStream("file1");
ps.setBinaryStream(2, (InputStream) fis, (int) (file1.length()));
    
RequestDispatcher rd=request.getRequestDispatcher("Select_Language.jsp");  
rd.forward(request, response);

int s=ps.executeUpdate();
System.out.print(s);
}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="Select_Language.jsp"></jsp:forward>
