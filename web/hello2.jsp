<%--     Document   : Select_Language    Created on : 5 Feb, 2020, 6:33:52 PM    Author     : Akshay Patidar--%><%@page import="java.sql.*"%>
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
        <link rel="stylesheet" href="css/bootstrap-reboot.min.css">       <link rel="stylesheet" href="css/bootstrap.css">       <link rel="stylesheet" href="css/bootstrap.min.css">    </head>    <body>        <div class="nav-fill">        <nav class="navbar">                      <li class="nav-item"><a href="Admin_home.jsp">Home</a></li>              <li class="nav-item"><a href="T_Select_Language.jsp">view tutorial</a></li>             <li class="nav-item"><a href="#">View topic</a></li>             <li class="nav-item"><a href="Admin-logout.jsp">logout</a></li>        </nav>        </div>        <div class="container">           <form name="form1" method="post"  id="register-form" enctype="multipart/form-data" class="register-form">                <div class="form-group col-md-10 form-group p_star">                    <input type="text" name="topicEnter" placeholder="Enter New Topic Name" size="30" class="input100 form-control" required><br>                    <button type="submit" class="btn btn-primary" formaction="storelanguagetopic">Add</button>                </div>                    </form>            <%              String connectionURL = "jdbc:mysql://localhost:3306/tutorial";              String user = "root";              String pass = "1234";               Connection con = null;              String lang = (String) session.getAttribute("selectLanguage1");              String showtopic = "tutotopic"+lang;                            try{                                  Class.forName("com.mysql.jdbc.Driver");                    con = DriverManager.getConnection(connectionURL, user, pass);                         PreparedStatement ps = con.prepareStatement("select topicname from "+showtopic+" ");                    ResultSet rs = ps.executeQuery();                     while(rs.next()){                                               String topic = rs.getString("topicname");        %>        <a href="T_show_topic_content.jsp?topic1=<%=topic%>"><%=topic%></a> <br><br>        <%    }}catch(Exception e){    e.printStackTrace();}   finally{    if(con != null){        try{            con.close();        }        catch(Exception e){            e.printStackTrace();        }    }}%>        </div>    </body></html>