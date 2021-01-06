<%-- 
    Document   : Select_Language
    Created on : 5 Feb, 2020, 6:33:52 PM
    Author     : Akshay Patidar
--%>

<%@page import="java.io.File"%>

<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>User Profile page</title>
  <script src="js/bootstrap.bundle.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery.min.js"></script>  

        <link rel="stylesheet" href="style/Select_Language.css">
       <link rel="stylesheet" href="css/bootstrap-grid.css">
       <link rel="stylesheet" href="css/bootstrap-grid.min.css">
       <link rel="stylesheet" href="css/bootstrap-reboot.css">
       <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
       <link rel="stylesheet" href="css/bootstrap.css">
       <link rel="stylesheet" href="css/bootstrap.min.css">
       <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="footer.css">
        <style type="text/css">

            body {
              font-family: "Lato", sans-serif;
            }

            .navbar {
              overflow: hidden;
              background-color: #333;
              position: fixed;
              top: 0;
              width: 100%;
            }

            .navbar a {
              float: left;
              display: block;
              color: #f2f2f2;
              text-align: center;
              padding: 14px 16px;
              text-decoration: none;
              font-size: 17px;
            }
         
              .headerimg{
                margin-top: 6%;  
              }
              .link li a:hover{
                  background-color: white;
                  color: black;
              }
              .sidenav{
                  margin-top: 8%;

              }
              .sidenav h1{
                  padding-left: 30%;
                  
              }
              .data{
                  margin-bottom:3%;
                  margin-left: 10%;
                  margin-right: 10%;
                  background-image:  url("imgaes/profile.jpg");
                  background-repeat: no-repeat;
                  background-size: cover;
              }
              .image img
              {
                  margin-top: 3%;
                  margin-left: 45%;
              }
              .userdata{
                  padding-top: 5%;
                  padding-left: 5%;
                  padding-bottom: 3%;
              }
              .info{
                  padding-bottom: 2%;
              }
              .info strong{
                  font-size: 35px;
              }
              .infobtn{
                  padding-top: 3%;
              }
  </style>
</head>

<body>

  <!-- Navbar -->
  
            <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
                <div class="container-fluid"> 
                    <div class="navbar-header">
                                <a class="border" href="Admin_home.jsp" style="color:white">CODEHUB</a> 
                            </div>
                            <ul class="nav navbar-nav link">
                                          <li><a href="Admin_home.jsp">Home</a></li>
                                            <li><a href="C_Select_Language.jsp">Code</a></li>
                                            <li><a href="T_Select_Language.jsp">Tutorial</a></li>
                                            <li><a href="Q_Select_Language_Quiz.jsp">Quiz</a></li>
                                            <li><a href="V_Select_Language.jsp">Video</a></li>
                                            <li><a href="E_Select_Language.jsp">Ebook</a></li>
                             </ul>
                             <ul class="nav navbar-nav navbar-right">
                                <li><a class="btn btn-secondary" href="AdminLogout">Logout</a></li>
                     </ul>
                </div>
            </nav>
    <div class="sidenav">
        <div class="container-fulid">
            <div class="data ">
            <%

                String email2 = (String) session.getAttribute("user");
                String connectionURL = "jdbc:mysql://localhost:3306/project1";
                String user = "root";
                String pass = "1234";

                Connection con = null;

                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);

                    PreparedStatement ps = con.prepareStatement("select email,name,image,password,phone,address from user_site_info where email='"+email2+"'");
                    ResultSet rs = ps.executeQuery();

                    while(rs.next()){
                        Blob blob = rs.getBlob("image");
                        byte byteArray[] = blob.getBytes(1, (int)blob.length());
                         String base64Image = new String(Base64.encodeBase64(byteArray)); 
                         request.setAttribute("imageBt", base64Image);
                         String email1 = rs.getString("email");
                         String pass1 = rs.getString("password");
                         String address1 = rs.getString("address");
                         String phone1 = rs.getString("phone");
                         String name1 = rs.getString("name");
             %>
             <div class="image">
                 <img class="text-center" src="data:image/jpg;base64,${requestScope['imageBt']}" width="130" height="130"/>
             </div>
             <div class="userdata">
                 <div class="row info align-items-center ">
                     <div class="col-2 text-center">
                        <img src="imgaes/user.png" width="30px" height="30px">
                     </div>
                     <div class="col-6 text-left">
                         <strong><%=name1%></strong>
                     </div>
                 </div>
                 <div class="row info align-items-center ">
                     <div class="col-2 text-center">
                        <img src="imgaes/mail.png" width="30px" height="30px">
                     </div>
                     <div class="col-6 text-left">
                        <strong><%=email1%></strong>
                     </div>
                 </div>
                 <div class="row info align-items-center ">
                     <div class="col-2 text-center">
                        <img src="imgaes/password.png" width="30px" height="30px">
                     </div>
                     <div class="col-6 text-left">
                        <strong><%=pass1%></strong>
                     </div>
                 </div>
                 <div class="row info align-items-center ">
                     <div class="col-2 text-center">
                        <img src="imgaes/phone.png" width="30px" height="30px">
                     </div>
                     <div class="col-6 text-left">
                        <strong><%=phone1%></strong>
                     </div>
                 </div>
                  <div class="row info align-items-center ">
                     <div class="col-2 text-center">
                        <img src="imgaes/address.png" width="30px" height="30px">
                     </div>
                     <div class="col-6 text-left">
                        <strong><%=address1%></strong>
                     </div>
                 </div>
                 <div class="row infobtn align-items-center ">
                     <div class="col-6 text-center">
                     </div>
                     <div class="col-6 text-center">
                         <a href="U_User_Update_Profile.jsp" class="btn btn-dark">Update Profile</a>
                     </div>
                 </div>
             </div>
       
         
        
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
      </div>
   </div>
    <!--/.Carousel Wrapper-->
    <footer>
          <div class="container text-center">
            <div class="row">
                <div class="col-md-12">
                    <div class="block">
                        <h2 href="Admin_home.jsp" class="footer-logo mb-4">Codehub</h2>
                        <ul class="list-inline footer-menu">
                            <li class="list-inline-item">
                                <a href="Admin_home.jsp">HOME</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="About.jsp">ABOUT</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="Service.jsp">SERVICES</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="Contect.jsp">CONTACT</a>
                            </li>
                        </ul>
                        <p class="copyright-text">Copyright &copy; <a href="http://www.codehub.com">Codehub</a>|
                            All right reserved.</p>
                    </div>
                </div>
            </div>
          </div>
       </footer>     
    </body>
</html>

