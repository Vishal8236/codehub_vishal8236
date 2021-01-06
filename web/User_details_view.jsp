<%-- 
    Document   : User_details_view
    Created on : 5 Feb, 2020, 6:06:14 PM
    Author     : Akshay Patidar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login user details</title>
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <script src="js/bootstrap.bundle.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
     
       <link rel="stylesheet" href="css/bootstrap-grid.css">
       <link rel="stylesheet" href="css/bootstrap-grid.min.css">
       <link rel="stylesheet" href="css/bootstrap-reboot.css">
       <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
       <link rel="stylesheet" href="css/bootstrap.css">
       <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <form action="" method="post"> 
            <table class="table">
                <tr>
                    <th>User Id</th>
                    <th>Picture</th>
                    <th></th>
                </tr>
        <%

 
String connectionURL = "jdbc:mysql://localhost:3306/project1";
String user = "root";
String pass = "1234";
 
Connection con = null;
 
try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection(connectionURL, user, pass);
    
    PreparedStatement ps = con.prepareStatement("select email , image from user_site_info ");
    ResultSet rs = ps.executeQuery();
 
    while(rs.next()){
        Blob blob = rs.getBlob("image");
        byte byteArray[] = blob.getBytes(1, (int)blob.length());
         String base64Image = new String(Base64.encodeBase64(byteArray)); 
         request.setAttribute("imageBt", base64Image);
         String email1 = rs.getString("email");
        %>
        <tr>
            <td><%=email1%></td>            
            <td><img src="data:image/jpg;base64,${requestScope['imageBt']}" width="50" height="50"/></td> 
            <td><button class="btn btn-info" formaction="User_More_details.jsp?email1=<%=email1%>">View more</button></td>
        </tr>
         
        
        <%
    }
}
catch(Exception e){
    e.printStackTrace();
}   
finally{
    if(con != null){
        try{
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
%>
    </table>
    
    </form>
    </div>
    </body>
</html>
