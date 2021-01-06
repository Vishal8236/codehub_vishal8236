<%-- 
    Document   : Select_Language
    Created on : 5 Feb, 2020, 6:33:52 PM
    Author     : Akshay Patidar
--%>
<%@page import="java.sql.*"%>
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Language show page</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
           <form name="form1" method="post"  id="register-form" enctype="multipart/form-data" class="register-form">
                <div class="form-group col-md-10 form-group p_star">
                    <input type="text" name="languageEnter" placeholder="Enter New Language Name" size="30" class="input100 form-control"><br>
                    <input type="file" name="languageLogo">
                    <button type="submit" class="btn btn-primary" formaction="storelanguage">Add</button>
                </div>        
            </form>
            <%
              String connectionURL = "jdbc:mysql://localhost:3306/project";
              String user = "root";
              String pass = "1234";
 
              Connection con = null;
 
              try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
    
                     PreparedStatement ps = con.prepareStatement("select languagename , logo from codelanguage ");
                    ResultSet rs = ps.executeQuery();
 
                    while(rs.next()){
                        Blob blob = rs.getBlob("logo");
                        byte byteArray[] = blob.getBytes(1, (int)blob.length());
                        String base64Image = new String(Base64.encodeBase64(byteArray)); 
                        request.setAttribute("imageBt", base64Image);
                        String lang = rs.getString("languagename");
        %>
        <a href="<%=lang%>.jsp"><img src="data:image/jpg;base64,${requestScope['imageBt']}" width="100" height="100"/></a>     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
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
        </div>
    </body>
</html>
