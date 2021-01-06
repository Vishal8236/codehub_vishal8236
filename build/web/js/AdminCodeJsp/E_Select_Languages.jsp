

<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Select Language for Ebook</title>
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




.repofile{
    background-color: #f2f2f2;
    margin-top: 10%;
    
}
.main {
  margin-top: 100px;  
  margin-left: 250px; /* Same as the width of the sidenav */
  font-size: 28px; /* Increased text to enable scrolling */
  padding: 0px 10px;
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
                      <li><a href="">Home</a></li>
	                <li><a href="E_Select_Language.jsp">View Ebooks</a></li>
	                <li><a href="">Delete Ebooks</a></li>
	                <li><a href="">Contect</a></li>
	                <li><a href="">Video</a></li>   
         </ul>
         <ul class="nav navbar-nav navbar-right">
                        <li><a class="btn btn-secondary" href="C_Create_New_Repository.jsp">Logout</a></li>
	 </ul>
    </div>
</nav>
  <div class="headerimg">
      <div class="container">
          <div class="row align-items-center justify-content-center">
               
            <div class="col-xl-6 col-md-6">
               
               <form name="form1" method="post"  id="register-form" enctype="multipart/form-data" class="register-form input">
                    <div class="form-group col-md-10 form-group p_star">
                        <h1><b>Welcome In CodeHub <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ebook Store</b></h1><br><br>
                        <input type="text" name="languageEnter"  placeholder="Enter New Language Name" size="30" class="input100 form-control" required><br>
                        <input type="file" name="languageLogo" class="glyphicon glyphicon-paperclip">
                        <button type="submit" class="btn btn-primary" formaction="storesubjectebook">Add</button>
                    </div>        
                </form>
            </div>
            <div class="col-xl-6 col-md-6">
                  <img src="imgaes/ebook.jpg" width="600px" height="550px">
            </div>   
          </div>    
       </div>   
  </div>
  <!--/.Carousel Wrapper-->
   <div class="repofile"> 
            
       <div class="container-fluid">
           <div class="row">
               
           
      <%
              String connectionURL = "jdbc:mysql://localhost:3306/ebook";
              String user = "root";
              String pass = "1234";
 
              Connection con = null;
              int count=0;
              try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
    
                     PreparedStatement ps = con.prepareStatement("select name , logo from subject ");
                    ResultSet rs = ps.executeQuery();
 
                    while(rs.next()){
                        Blob blob = rs.getBlob("logo");
                        byte byteArray[] = blob.getBytes(1, (int)blob.length());
                        String base64Image = new String(Base64.encodeBase64(byteArray)); 
                        request.setAttribute("imageBt", base64Image);
                        String lang = rs.getString("name");
         %>
        <div class="col-sm-2 lang ">
        <div class="card w-85" >  
            
                <a href="checktableebook?languageEnter=<%=lang%>"><img class="card-img-top" src="data:image/jpg;base64,${requestScope['imageBt']}"  width="170" height="170" alt=""></a>
                     
            <div class="card-body text-center">
                <a class="card-link text-center" href="checktableebook?languageEnter=<%=lang%>"><%=lang%></a>
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
</body>
</html>




