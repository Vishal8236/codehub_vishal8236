


<%-- 
    Document   : C_Select_Repository
    Created on : 23 Feb, 2020, 5:59:39 PM
    Author     : Akshay Patidar
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>admin repository files</title>
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
                        margin-top: 5%;
                    }
                    div.topic {
                      width: 400px;
                      height: 400px;
                      overflow: auto;
                      margin-top: 2%;
                      margin-left: 0%;
                   }
                   .repon
                   {
                   }
                    .comment
                    {
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
                    .showcomment
                    {
                        margin-top: 5%;
                    }
                    .query
                    {
                        margin-right: 50%;
                        margin-left: 10%;
                        margin-bottom: 2%;
                    }
                    .queryA
                    {
                        margin-right: 10%;
                        margin-left: 50%;
                        margin-bottom: 2%;
                    }
                    .img img{
                        padding-bottom: 0%;
                    }
                 </style>
                 <script type="text/javascript">
                     function myfunction()
                     {
                         //location.replace("http://localhost:8080/CodeHub/U_Admin_Code_Show_Files_Repository.jsp?reponame=codehub");
                     }
                 </script>
            </head>
    
            <body onload="">
                <%
                String rname = request.getParameter("reponame");
                %>  
                  
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
                     <div class="headerc">
                        <div class="container-fluid ">
                            <h1><b>Welcome In CodeHub Source Code</b></h1> 
                        </div>
                    </div> 
                <div class="sidenav">
                  <div class="container">
                    <div class="row ">
                      <div class="col-6">
                          
                          
                          <div class="topic">
                              <div class="alert alert-success alert-dismissible fade show warn hint">
                                &nbsp;&nbsp;This is <strong><%=rname%></strong> Repository files
                             </div>
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
                        
                        <div class="col-6">
                            <a style="font-size:25px;" href="U_Admin_Code_Show_Repository_File_Content.jsp?selectfname=<%=pathname%>"><%=pathname%></a><br> 
                        </div>    
                    </div>
                       <%
                            }
                        %>
                        </div>
                    </div>
                    <div class="col-6 align-items-center justify-content-center img">
                         <img src="imgaes/quiz6.jpg" width="540px" height="540px">
                    </div>
                  </div>    
              </div>
           </div>
           <div class="showcomment">
               <%  
                    String connectionURL = "jdbc:mysql://localhost:3306/project";
                    String user = "root";
                    String pass = "1234";
                    Connection con = null;
                    int id=0;
                    try{
                          Class.forName("com.mysql.jdbc.Driver");
                          con = DriverManager.getConnection(connectionURL, user, pass);

                          PreparedStatement ps = con.prepareStatement("select dt,name,email,comment from comment where repo='"+rname+"'");
                          ResultSet rs = ps.executeQuery();

                          while(rs.next())
                          {
                              String uname = rs.getString("name");
                              String uemail = rs.getString("email");
                              String ucomment = rs.getString("comment");
                              String dt = rs.getString("dt");
                              //id = rs.getInt("id");
                              
                               
                    %>
                        <div class="query ">
                            <p><%=dt%></p>
                            <div class="content card">
                                <h2><img src="imgaes/user.png" height="25px" width="25px">&nbsp;&nbsp;&nbsp;<%=uname%></h2>
                                 <p><%=ucomment%></p>
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
           <div class="comment form-group">
                <form action="C_Store_User_Comment" method="get">
                    Leave a comment
                    
                    <textarea cols="20" rows="10" name="quesbox" class="form-control" required>
                        
                    </textarea><br>
                    <input type="textbox" name="name" placeholder="Name*" class="form-control" required><br>
                    <input type="textbox" name="email" placeholder="Email*" class="form-control" required><br>
                    <input type="textbox" name="repo" placeholder="Repository Name*" title="repository name and entered repository name must be same" class="form-control" required><br>
                    <input type="submit" value="Submit" class="btn btn-info">
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
                                      <a href="U_User_home_page.jsp">HOME</a>
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

