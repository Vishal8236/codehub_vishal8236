
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<% 
    
      %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>tutorial select language</title>
  
  <script src="js/bootstrap.bundle.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery.min.js"></script>  
        <script src="jquery/jquery.min.js"></script>
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
               console.log("document is ready");
                  $( ".card" ).hover(
                  function() {
                    $(this).addClass('shadow-lg').css('cursor', 'pointer'); 
                  }, function() {
                    $(this).removeClass('shadow-lg');
                  }
                );
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
                    .repofile{
                        background-color: #f4f4f4;
                        margin-top: 7%;
                        padding-top: 5%;
                        padding-bottom: 5%;
                    }
                    @media screen and (max-height: 450px) {
                      .sidenav {padding-top: 15px;}
                      .sidenav a {font-size: 18px;}
                    }
                    .affix {
                        top: 0;
                        width: 100%;
                        z-index: 9999 !important;
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
                      .footer-menu a {
                            font-size: 14px;
                            font-weight: 700;
                            color: #444;
                            padding: 10px;
                          }

                          footer {
                            text-align: center;
                            background: #ffffff;
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

   </div> 
  <div class="headerimg">
      <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-xl-6 col-md-6">
               
                        <h1><b>Welcome In CodeHub <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tutorials</b></h1><br><br>
                        
            </div> 
            <div class="col-xl-6 col-md-6">
                  <img src="imgaes/quiz.jpg" width="600px" height="550px">
            </div>   
          </div>    
       </div>   
  </div>
  <!--/.Carousel Wrapper-->
   <div class="repofile"> 
            
       <div class="container-fluid language">
          
           <div class="row">
               
           
      <%
              String connectionURL = "jdbc:mysql://localhost:3306/tutorial1";
              String user = "root";
              String pass = "1234";
 
              Connection con = null;
              int count=0;
              try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
    
                    PreparedStatement ps = con.prepareStatement("select name , logo from languagename ");
                    ResultSet rs = ps.executeQuery();
 
                    while(rs.next()){
                        Blob blob = rs.getBlob("logo");
                        byte byteArray[] = blob.getBytes(1, (int)blob.length());
                        String base64Image = new String(Base64.encodeBase64(byteArray)); 
                        request.setAttribute("imageBt", base64Image);
                        String language1 = rs.getString("name");
        %>
        <div class="col-sm-2 lang ">
        <div class="card w-85" >  
            
                <a href="U_T_Check_File?language=<%=language1%>"><img class="card-img-top" src="data:image/jpg;base64,${requestScope['imageBt']}"  width="170" height="170" alt=""></a>
                     
                <div class="card-body">
                    <div class="row align-items-center justify-content-center">
                            <a class="card-link text-left" style="font-size:20px;" href="U_T_Check_File?language=<%=language1%>"><%=language1%></a>
                    </div> 
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


