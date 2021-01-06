<%-- 
    Document   : Select_Language
    Created on : 5 Feb, 2020, 6:33:52 PM
    Author     : Akshay Patidar
--%>
<% if (session.getAttribute("user") != null) {
		session.getAttribute("user");
	
			} else {
				response.sendRedirect("Admin_login.jsp");
			}
      %>
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Material Design Bootstrap</title>
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
        <script type="text/javascript">
        $(document).ready(function() {
 // executes when HTML-Document is loaded and DOM is ready
console.log("document is ready");
  

  $( ".card" ).hover(
  function() {
    $(this).addClass('shadow-lg').css('cursor', 'pointer'); 
  }, function() {
    $(this).removeClass('shadow-lg');
  }
);
  
// document ready  
});

   
        </script>
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
            .link li a:hover{
                background-color: white;
                color: black;
            }
            .sidenav{
                margin-top: 8%;
                padding-bottom: 4%;
            }
            .footer-menu a {
                font-size: 14px;
                font-weight: 700;
                color: #444;
                padding: 10px;
              }

              footer {
                text-align: center;
                background: #f4f4f4;
                padding: 50px 0px;
              }

              footer .footer-logo {
                color: #555;
                display: block;
              }

              footer p.copyright-text {
                font-weight: 300;
                font-size: 12px;
                color: #888;
                letter-spacing: 3px;
                margin-top: 15px;
              }

              footer p.copyright-text a {
                color: #282828;
              }

              footer p.copyright-text a:hover {
                text-decoration: none;
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
        <div class="container">
         <form action="./T_Content_store.jsp" method="get">
             <br><br>
             <input type="text" class="form-control"  name="topicN"  placeholder="Enter Topic name" required> <br><br><br>       
            <textarea class="form-control" rows="10" cols="60" name="info" placeholder="enter topic details" required>
                
            </textarea>
            <br><br>
            <input type="submit" class="btn btn-primary" value="Submit" >
        </form>
        </div> 
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
