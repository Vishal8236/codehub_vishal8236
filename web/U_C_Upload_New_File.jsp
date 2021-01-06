<% if (session.getAttribute("user") != null) {
		session.getAttribute("user");
	
			} else {
				response.sendRedirect("U_User_home_page.jsp");
			}
      %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>select file for upload in repository</title>
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
  div.lang{
      margin-top: 2%;
      margin-left: 3%;   
  }
  .headerimg{
    margin-top: 6%;
    margin-left: 15%;
  }
  .link li a:hover{
      background-color: white;
      color: black;
  }
  
  div.language h1{
      text-align: center;
      margin-top: 3%;
      
  }
  .form form{
      padding-top: 20%;
      padding-bottom:  20%;
      padding-left: 3%;
      padding-right: 3%;
      background-color: #e6f5ff;
  }
  .form h2{
      text-align: center;
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
  </style>
</head>

<body>

  <!-- Navbar -->
  <div class="headerc">  
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
            <div class="container-fluid "> 
                <div class="navbar-header">
                    <a class="border" href="Admin_home.jsp" style="color:white">CODEHUB</a> 
                </div>
                <ul class="nav navbar-nav link">
                              <li><a href="">Home</a></li>
                                <li><a href="">Service</a></li>
                                <li><a href="">Contect</a></li>
                                <li><a href="">Quiz</a></li>
                                <li><a href="">Video</a></li>   
                 </ul>
                 <ul class="nav navbar-nav navbar-right">
                                <li><a class="btn btn-secondary" href="userlogout">Logout</a></li>
                 </ul>
            </div>
        </nav>
                      <h1><b>Manage Your Source Code With CodeHub</b></h1>   

   </div> 
        <%
          String reponame = request.getParameter("repo");
        %>
  <div class="headerimg">
            <form action = "U_C_Upload_File.jsp?reponame=<%=reponame%>" method = "POST" enctype = "multipart/form-data">
            <div class="col-lg-6 col-md-6 login">
                    <div class="login_part_form">
                        <div class="login_part_form_iner">
                            
                                <div class="col-md-12 form-group p_star"> <br>
                                    Select File:
                                    <input type="file" class="form-control"  name="file" value=""
                                        placeholder=""> <br>
                                    
                                      <br>
                                    <input type="submit" value="submit" class="btn_3 btn btn-info"  >
        
                                </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>     
    </body>
</html>



