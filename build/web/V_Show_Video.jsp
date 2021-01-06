
<% if (session.getAttribute("user") != null) {
		session.getAttribute("user");
	
			} else {
				response.sendRedirect("Admin_login.jsp");
			}
      %>
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
  <title>Video select language</title>
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
            function permision()
            {
                alert("do you want to delete this file");
            }
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
                    .repofile{
                        margin-top: 7%;
                        margin-left: 5%;
                        padding-bottom: 7%;
                    }
                   .headerimg{
                        margin-top: 6%;  
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
                      .index a
                      {
                          font-size: 20px;
                          color: black;
                          text-decoration: none;
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
                            <li><a class="btn btn-primary" href="V_Upload_New_Video.jsp">Upload New Video</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <li><a class="btn btn-secondary" href="AdminLogout">Logout</a></li>
                 </ul>
            </div>
        </nav>
                      <h1><b>Welcome In CodeHub Video</b></h1>   

   </div> 
     <div class="repofile"> 
            
        <%
          String[] pathnames;
          String languagename = request.getParameter("language");
          session.setAttribute("LanguageName",languagename );
       
        int count=0;
        File f = new File("D:\\my project codehub\\abc\\web\\video\\"+languagename+"");

        // Populates the array with names of files and directories
        pathnames = f.list();

        // For each pathname in the pathnames array
        for (String pathname : pathnames) {
            // Print the names of files and directories
        count++;    
        %>
        <div class="row index justify-content-center">
            <div class="col-1">
                <a  href="V_Delete_Video?videon=<%=pathname%>" onclick="if (confirm('Are you sure you want to delete?')) form.action='/Config?pg=FIBiller&amp;cmd=delete'; else return false;"> 
                    <img title="delete video" src="imgaes/delete.jpg" width="35px" height="35px">
                </a>
            </div>
            <div class="col-1">
                <p style="font-size: 20px;"><%=count%>.</p>
            </div>
            <div class="col-8">
               <a href="V_View_Video.jsp?select=<%=pathname%>"><%=pathname%></a> 
            </div>
        </div>
            <%
           }
        %>
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
   