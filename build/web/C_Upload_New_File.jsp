
<% if (session.getAttribute("user") != null) {
		session.getAttribute("user");
	
			} else {
				response.sendRedirect("Admin_login.jsp");
			}
      %>
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
  <title>upload repository file</title>
       <link rel="stylesheet" href="css/bootstrap.css">
       <link href="css/bootstrap.min.css" rel="stylesheet">
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
    margin-bottom: 7%;
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
    margin-left: 22%;
}
  </style>
</head>

<body>

  <!-- Navbar -->
        <%
          String reponame = request.getParameter("repo");
        %>
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
                      <h1><b>Upload new file in <%=reponame%></b></h1>   
        </div> 
        
         <div class="headerimg">
            <form action = "C_Upload_File.jsp?reponame=<%=reponame%>" method = "POST" enctype = "multipart/form-data">
                <div class="col-lg-6 col-md-6 login">
                   <div class="col-md-12 form-group p_star"> <br>
                         Select File:
                         <input type="file" class="form-control"  name="file" required> <br>           
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



