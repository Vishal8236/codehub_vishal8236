<% if (session.getAttribute("user") != null) {
		session.getAttribute("user");
	
			} else {
				response.sendRedirect("U_User_home_page.jsp");
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
  <title>Source code select langugae</title>
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

function confirmDeleteModal(id){
    $('#deleteModal').modal();
	$('#deleteButton').html('<a class="btn btn-danger" onclick="deleteData('+id+')">Delete</a>');
}     
function deleteData(id){
  // do your stuffs with id
  $("#successMessage").html("Record With id "+id+" Deleted successfully!");
  $('#deleteModal').modal('hide'); // now close modal
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
    background-color: #f2f2f2;
    margin-top: 7%;
    padding-top: 4%;
    padding-bottom: 6%;
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
  }.footer-menu a {
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
                .btn-main {
  color: #fff;
  border-radius: 30px;
  font-size: 18px;
  padding: 15px 40px;
  display: inline-block;
  background-color: #f9a743;
  box-shadow: 0 15px 40px rgba(249, 167, 68, 0.5);
  background-image: linear-gradient(bottom, rgba(255, 239, 206, 0) 0%, rgba(255, 239, 206, 0.25) 100%);
}

.btn-main:hover, .btn-main:focus {
  background-color: #f9a743;
  color: #fff;
}

.btn-main-sm {
  padding: 12px 35px;
  text-transform: uppercase;
  font-size: 14px;
  font-weight: bold;
}
  </style>
</head>

<body>

  <!-- Navbar -->
  <div class="headerc">  
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
            <div class="container-fluid "> 
                <div class="navbar-header">
                                <a class="border" href="U_Login_Home_Page.jsp" style="color:white">CODEHUB</a> 
                            </div>
                            <ul class="nav navbar-nav link">
                                          <li><a href="U_Login_Home_Page.jsp">Home</a></li>
                                            <li><a href="U_Admin_Code_Select_Language.jsp">Admin Code</a></li>
                                            <li><a href="U_T_Select_Language.jsp">Tutorial</a></li>
                                            <li><a href="U_Q_Select_Language_Quiz.jsp">Quiz</a></li>
                                            <li><a href="U_V_Select_Language.jsp">Video</a></li>
                                            <li><a href="U_E_Select_Language.jsp">Ebook</a></li>
                             </ul>
                             <ul class="nav navbar-nav navbar-right">
                                <li><a class="btn btn-secondary" href="UserLogout">Logout</a></li>
                 </ul>
            </div>
        </nav>
                      <h1><b>Manage Your Source Code With CodeHub</b></h1>   

   </div> 
  <div class="headerimg">
      <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-xl-6 col-md-6  ">
                <div class=" ">
                    <div class="form-group col-md-10 form-group p_star form">
                        <a class="btn btn-main" href="U_C_Create_New_Language.jsp">Add New Language</a>
                    </div>        
                </div> 
            </div>
            <div class="col-xl-6 col-md-6">
                  <img src="imgaes/repo.jpg" width="600px" height="550px">
            </div>   
          </div>   
       </div>   
  </div>
  <!--/.Carousel Wrapper-->
   <div class="repofile"> 
            
       <div class="container-fluid language">
          
           <div class="row">
               
      <%
       String user_id = (String) session.getAttribute("user");
            String[] pathnames;
            File f = new File("D:\\my project codehub\\abc\\web\\User Code Repository\\"+user_id+" ");
            pathnames = f.list();
            for (String pathname : pathnames) {
    
        %>
        
        <div class="col-sm-2 lang ">
        <div class="card w-85" >  
            
                <a href="U_C_Select_Repository.jsp?languageEnter=<%=pathname%>"><img class="card-img-top" src="imgaes\folder.jpg"  width="170" height="170" alt="img"></a>                     
                <div class="card-body">
                    <div class=" align-items-center justify-content-center text-center">
                        <a class="card-link text-left" style="font-size:20px;" href="U_C_Select_Repository.jsp?languageEnter=<%=pathname%>"><%=pathname%></a>
                    </div> 
                </div>   
        </div>
        </div> 

<%
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




