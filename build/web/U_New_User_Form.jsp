
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>upload new book information</title>
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
                padding-bottom: 5%;
              }
              .link li a:hover{
                  background-color: white;
                  color: black;
              }
              .headerc{
                  background-color: #333;
                  
              }
              .headerc h1{
                margin-top: 5%;  
                color: white;
                text-align: center;
                padding-top: 5%;
                padding-bottom: 5%;
              }
            .login{
                margin-top: 5%;
                margin-left: 25%;
            }
  </style>
</head>

<body>


  <div class="headerimg">
       <%
                    String email1 = request.getParameter("email");
                    if(email1.equals("invalid"))
                    {
                      %>
                      <div class="alert alert-danger alert-dismissible fade show warn">
                                 <strong>Warning!</strong>&nbsp;&nbsp;This email is alerady login
                                 <button type="butoon" class="close" data-dismiss="alert">&times;</button>
                     </div>
                      <%
                    }
                 %>
        <form action="store_user_data" method="POST" enctype="multipart/form-data">
            <div class="col-lg-6 col-md-6 login">
                    
                    <div class="col-md-12 form-group p_star"> <br>
                                    <input type="text" class="form-control"  name="name" value="" required
                                        placeholder="Enter your name"> <br><br>
                                    
                                    <input class="input100 form-control"  type="text"   name="email" value="" required
                                           placeholder="Enter email"><br>
                                    
                                    <input type="pssword" placeholder="password" name="pass"  required
                                           class="input100 form-control"><br>
                                    
                                    <input class="input100 form-control"  type="password"   name="re_pass" value="" required
                                           placeholder="retype password"><br>
                                    
                                    <input type="text" placeholder="enter phone" name="phone"  required
                                           class="input100 form-control"><br>
                                    
                                    <input class="input100 form-control"  type="text"   name="address" value="" required
                                           placeholder="Enter address"><br>
                                 
                                    Enter  Image:
                                    <input type="file" class="form-control"  name="image" value="" required
                                        placeholder=""> <br>
                                    
                                      <br>
                                    <input type="submit" value="submit" class="btn_3 btn btn-info"  >
        
                    </div>
                </div>
            </form>
                
        </div>
        
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



