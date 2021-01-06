
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
<a href="T_Select_Language.jsp"></a>
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
                        .repofile{
                            background-color: #f2f2f2;
                            margin-top: 7%;
                            padding-bottom: 5%;
                            padding-top: 4%;
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
                      <h1><b>Welcome In CodeHub Video</b></h1>   

   </div> 
  <div class="headerimg">
      <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-xl-6 col-md-6  ">
                <div class=" ">
                    <div class="form-group col-md-10 form-group p_star form">
                        <h2><b>Add New Language</b></h2>
                        <form name="form1" method="post"  id="register-form" enctype="multipart/form-data" class="register-form input">
                            Language name:
                                 <input type="text" name="languageEnter" placeholder="Enter New Language Name" size="30" class="input100 form-control" required>
                                 <br>
                            Language logo:<br>
                                 <input type="file" name="languageLogo">
                            <button type="submit" class="btn btn-primary" formaction="V_Store_Language">Add</button>
                        </form>
                    </div>        
                </div> 
            </div>
            <div class="col-xl-6 col-md-6">
                  <img src="imgaes/video3.png" width="600px" height="550px">
            </div>   
          </div>    
       </div>   
  </div>
  <!--/.Carousel Wrapper-->
   <div class="repofile"> 
            
       <div class="container-fluid language">
          
           <div class="row">
               
           
      <%
 String connectionURL = "jdbc:mysql://localhost:3306/project1";
              String user = "root";
              String pass = "1234";
 
              Connection con = null;
              int count=0;
              try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
    
                    PreparedStatement ps = con.prepareStatement("select name , logo from videolanguage ");
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
            
                <a href="V_Show_Video.jsp?language=<%=language1%>"><img class="card-img-top" src="data:image/jpg;base64,${requestScope['imageBt']}"  width="170" height="170" alt=""></a>
              
             <div class="card-body">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-8">
                            <a class="card-link text-left" style="font-size:20px;" href="V_Show_Video.jsp?language=<%=language1%>"><%=language1%></a>
                        </div>
                        <div class="col-4">
                            <a  href="V_Delete_Language?languageN=<%=language1%>" onclick="if (confirm('Are you sure you want to delete?')) form.action='/Config?pg=FIBiller&amp;cmd=delete'; else return false;"> 
                                <img title="delete language" src="imgaes/delete.jpg" width="35px" height="35px">
                            </a>
                        </div>
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
      <!--Section: Products v.3-->     
    
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


