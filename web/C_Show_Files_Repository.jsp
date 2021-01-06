<%-- 
    Document   : C_Select_Repository
    Created on : 23 Feb, 2020, 5:59:39 PM
    Author     : Akshay Patidar
--%>
<% if (session.getAttribute("user") != null) {
		session.getAttribute("user");
	
			} else {
				response.sendRedirect("Admin_login.jsp");
			}
      %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>User repository files</title>
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

                    .navbar a:hover {
                      background: #ddd;
                      color: black;
                    }
                 .repofile {
                      margin-top: 100px;  
                      margin-left: 50px; /* Same as the width of the sidenav */
                      font-size: 28px; /* Increased text to enable scrolling */
                      padding: 0px 10px;
                    }
                    .sidenav
                    {
                        margin-top: 8%;
                    }
                    div.topic {
                      text-align: center;
                      width: 400px;
                      height: 400px;
                      overflow: auto;
                      margin-top: 2%;
                   }
                   .repon
                   {
                   }
                    .comment
                    {
                      background-color: #e6ffff;
                      padding-left: 150px;
                      padding-top: 50px;
                      padding-right: 150px;
                      padding-bottom: 50px;
                    }
                   .headerc
                    {
                      background-color: #333;
                    }
                    .headerc h1{
                      margin-top: 5%;  
                      color: white;
                      text-align: center;
                      padding-top: 5%;
                      padding-bottom: 5%;
                    }
                    .content
                    {
                        padding-top: 20px;
                        padding-left: 50px;
                    }
                    .content p
                    {
                        padding-top: 20px;
                    }
                    
                 </style>
            </head>
    
         <body>
                <%
                String rname = request.getParameter("reponame");
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
                                
                                 <li><a class="btn btn-info" href="C_Upload_New_File.jsp?repo=<%=rname%>">Upload New File</a></li> .&nbsp;.&nbsp;.&nbsp;.&nbsp;.&nbsp;
                                 <li><a class="btn btn-secondary" href="AdminLogout">Logout</a></li>
                             </ul>
                        </div>
                    </nav>
                        <h1><b>Manage Your Source Code With CodeHub</b></h1>   
                 </div> 
                <div class="sidenav">
                  <div class="container">
                    <div class="row ">
                      <div class="col-6">
                          
                          <h1 class="repon"><%=rname%> Repository </h1>
                          
                          <div class="topic">

                       <%
                          String language =(String) session.getAttribute("languagename");

                          HttpSession session1 = request.getSession();
                          session1.setAttribute("selectrepo", rname);
                          String[] pathnames;
                          // Creates a new File instance by converting the given pathname string
                          // into an abstract pathname

                          File f = new File("D:\\my project codehub\\abc\\web\\Code Repository\\"+language+"\\"+rname+"");

                          // Populates the array with names of files and directories
                          pathnames = f.list();

                          // For each pathname in the pathnames array
                          for (String pathname : pathnames) {
                       %> 
                       <div class="row align-items-center ">
                        <div class="col-1 ">
                            <a href="C_Delete_File_In_Repo?fileN=<%=pathname%>" onclick="if (confirm('Are you sure you want to delete?')) form.action='/Config?pg=FIBiller&amp;cmd=delete'; else return false;"> 
                                <img title="delete repository file" src="imgaes/delete.jpg" width="35px" height="35px">
                            </a>
                        </div>
                        <div class="col-6">
                            <a style="font-size:25px;" href="C_Show_Repository_File_Content.jsp?selectfname=<%=pathname%>"><%=pathname%></a><br> 
                        </div>    
                    </div>
                       <%
                            }
                        %>
                        </div>
                    </div>
                    <div class="col-6 align-items-center justify-content-center">
                         <img src="imgaes/quiz.jpg" width="540px" height="540px">
                    </div>
                  </div>    
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

