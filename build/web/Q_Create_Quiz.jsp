<%-- 
    Document   : Admin_login
    Created on : 5 Feb, 2020, 5:18:50 PM
    Author     : Akshay Patidar
--%>
<% if (session.getAttribute("user") != null) {
		session.getAttribute("user");
	
			} else {
				response.sendRedirect("Admin_login.jsp");
			}
      %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>create new quiz</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  crossorigin="anonymous">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"  crossorigin="anonymous"> 
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
    <link rel="stylesheet" href="footer.css">
        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"  crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"  crossorigin="anonymous"></script>
        <style type="text/css">
            .login{
                margin-top: 5%;
                margin-left: 25%;
            }
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

             
               
            div.lang{
                margin-top: 2%;
                margin-left: 3%;   
            }
            .headerimg{
              margin-top: 6%;  
            }
            .link li a:hover{
                background-color: white;
                color: black;
            }

            div.language h1{
                text-align: center;
                margin-top: 3%;

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
            .createQ
            {
                margin-top: 1%;
            }
        </style>
        
    </head>
    <body>
         <div class="headerc">  
            <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
                <div class="container-fluid "> 
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
                      <h1><b>Welcome In CodeHub Quiz<br></b>
                          <b style="padding-top:6%;"> Create New Quiz</b></h1>   

        </div>
        <div class="createQ">
        <form method="POST" name="userlogin" action="storequizquestion">
            <div class="col-lg-6 col-md-6 login">
                    
                                <div class="col-md-12 form-group p_star"> <br>
                                    <input type="text" class="form-control"  name="topicN" value="" required
                                        placeholder="Enter Topic name"> <br><br><br>
                                    <input class="input100 form-control"  type="text"  required name="ques" value=""
                                           placeholder="Enter Quistion Nmae ?"><br>
                                    <input type="text" class="form-control"  name="op1" value="" required
                                        placeholder="Enter Option 1"> <br>
                                    <input type="text" class="form-control"  name="op2" value="" required
                                        placeholder="Enter Option 2"> <br>
                                    <input type="text" class="form-control"  name="op3" value="" required
                                        placeholder="Enter Option 3"> <br>
                                    <input type="text" class="form-control"  name="op4" value="" required
                                        placeholder="Enter Option 4"> <br>
                                    <input type="text" class="form-control"  name="ans" value="" required
                                        placeholder="Enter Answer"> <br>
                                      <br>  
                                    <input type="submit" value="submit" class="btn_3 btn btn-info"  >
                                       
        
                                </div>
                        </div>
                    </div>
                </div>
            </form>
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



