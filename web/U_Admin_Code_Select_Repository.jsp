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
  <title>Select Repository</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
  
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
                        background-color: #f2f2f2;
                        margin-top: 10%;
                    }
                      .headerimg{
                        margin-top: 6%;  
                      }
                      .link li a:hover{
                          background-color: white;
                          color: black;
                      }
                      .sidenav{
                          margin-top: 1%;
                      }
                     
                    div.topic {
                        padding-top: 5%;
                        text-align: center;
                      width: 450px;
                      height: 470px;
                      overflow: auto;
                    }
                    .content{
                        border-left: 5px solid red;
                        margin-left: 3%;
                        background-color: #b3ffff;
                    }
                    .content p{
                        margin-left: 3%;
                        margin-bottom: 3%;
                        margin-right: 3%;
                        margin-top: 3%;
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
                      .repo{
                          margin-left: 3%;
                      }
                      .rtext a{
                          font-size: 25px;
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
                        .hint{
                            margin-left: 3%;
                            margin-right: 0%;
                        } 
                        .img img{
                            padding-bottom: 10%;
                        }
  </style>
</head>

<body>

  <!-- Navbar -->
            <div class="headerc">  
                    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
                        <div class="container-fluid"> 
                            <div class="navbar-header">
                          <% if (session.getAttribute("user") != null) {
                          %>
                          <a class="" href="U_Login_Home_Page.jsp">
                              <img src="imgaes/home1.png" width="60px" height="60px">
                          </a> 
                          <%
                                  } 
                                else{ 
                          %>
                          <a href="U_User_home_page.jsp">
                              <img src="imgaes/home1.png" width="60px" height="60px">
                          </a>
                          <%}%>
                    </div>
                            <ul class="nav navbar-nav link">
                                            <li><a href="U_Admin_Code_Select_Language.jsp">Code</a></li>
                                            <li><a href="U_T_Select_Language.jsp">Tutorial</a></li>
                                            <li><a href="U_Q_Select_Language.jsp">Quiz</a></li>
                                            <li><a href="U_V_Select_Language.jsp">Video</a></li>
                                            <li><a href="U_E_Select_Language.jsp">Ebook</a></li>
                             </ul>
                             <ul class="nav navbar-nav navbar-right">
                                <% if (session.getAttribute("user") != null) {
                                %>
                                <li><a class="btn btn-secondary" href="U_C_Select_Language.jsp">Private Code</a></li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <li><a class="btn btn-info" href="UserLogout">Logout</a></li>
                                <%
                                  } 
                                else{ 
                                %>
                                    <li><a class="btn btn-secondary" href="U_User_login.jsp?msg=null">Login</a></li>
                                <%}%>         
                            </ul>
                        </div>
                     </nav>
                        <h1><b>Welcome In CodeHub Source Code</b></h1>   
                 </div>
            <%
               String selectlanguage = request.getParameter("languageEnter");
            %>     
  <div class="sidenav">
      <div class="container">
          
          <div class="row ">
            <div class="col-6">
                
                
                <div class="topic">
                    <div class="alert alert-success alert-dismissible fade show warn hint">
                        &nbsp;&nbsp;This is all <strong><%=selectlanguage%></strong> Programming language Repository 
                    </div>
                    <ul class="nav nav-pills nav-stacked repo">
                           <li>
                              <div class="row">
                       <%
                            String[] pathnames;
                            HttpSession session1 = request.getSession();
                            session1.setAttribute("languagename", selectlanguage);

                            File f = new File("D:\\my project codehub\\abc\\web\\Code Repository\\"+selectlanguage+" ");

                            // Populates the array with names of files and directories
                            pathnames = f.list();

                            // For each pathname in the pathnames array
                            for (String pathname : pathnames) {  
                       %> 
                                  <div class="col-10 rtext">
                                      <a href="U_Admin_Code_Show_Files_Repository.jsp?reponame=<%=pathname%>"><%=pathname%></a>
                                  </div>
                                  <div class="col-2">
                                     <a  href="Download_Admin_Code_By_User?repoN=<%=pathname%>" onclick="deleterepo()"> 
                                        <img title="download repository" src="imgaes/download.png" width="35px" height="35px">
                                     </a> 
                                  </div>
                              
                       <%
                                }
                           
                        %>
                    </div> 
                           </li> 
                       </ul>
                </div>
            </div>
            <div class="col-6 align-items-center justify-content-center img">
                 <img src="imgaes/tuto.jpg" width="540px" height="540px">
            </div>
          </div>    
      </div>
   </div>
    <!--/.Carousel Wrapper-->
    <footer>
          <div class="container text-center">
            <div class="row">
                <div class="col-md-12">
                    <div class="block">
                        <h2 href="#" class="footer-logo mb-4">Codehub</h2>
                        <ul class="list-inline footer-menu">
                            <li class="list-inline-item">
                                <a href="#">HOME</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#about">ABOUT</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#service">SERVICES</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#contact">CONTACT</a>
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

