<%-- 

    Document   : C_Select_Repository
    Created on : 23 Feb, 2020, 5:59:39 PM
    Author     : Akshay Patidar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <style type="text/css">
  
body {
  margin: 0;
  font-size: 28px;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  background-color: #f1f1f1;
  padding: 30px;
  text-align: center;
}

#navbar {
  overflow: hidden;
  background-color: #333;
}

#navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

#navbar a:hover {
  background-color: #ddd;
  color: black;
}

#navbar a.active {
  background-color: #4CAF50;
  color: white;
}

.main {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .main +.sidenav {
  padding-top: 60px;
}

.sidenav {
  margin-top: 5.2%;  
  height: 100%;
  width: 250px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  border-color: black;
  border: 1px solid black;
  overflow-x: hidden;
  padding-top: 20px;
  background-color:  #ffffe6;
}

.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 25px;
  color: black;
  display: block;
}

.sidenav a:hover {
  background-color: cyan;
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
  .navbar-dark{
	background-color: transparent;
	transition: all 0.3s ease 0s;
}

.navbar-dark .navbar-nav .nav-link{
	color: #ffffff;
	letter-spacing: 1px;
	font-size: 14px;
	position: relative;
	text-transform: capitalize;
}
.navbar-dark .navbar-nav .nav-link:hover{
	color: #ffffff;
}
.navbar-dark .navbar-nav .nav-link.active{
	font-weight: 600;
}
.navbar-dark .navbar-nav .nav-link::after {
    content: '';
    width: 0;
    height: 3px;
    background: #ffffff;
    position: absolute;
    bottom: 0;
    left: 0;
	right: 0;
	text-align: center;
	margin: 0 auto;
    border-radius: 0px;
    -webkit-transition: all .5s;
    transition: all .5s;
    z-index: -1;
}
.navbar-dark .navbar-nav .nav-link.active{
	color: #28a9e2;
}
.navbar-dark .navbar-nav .nav-link.active::after {
	width: 100%;
	height: 42px;
	border-radius: 100px 100px 0px 100px;
}


#mainNav.navbar-shrink .navbar-nav .nav-link{
	color: #28a9e2;
}

#mainNav.navbar-shrink .navbar-nav .nav-link::after{
	background: #28a9e2;
}

#mainNav.navbar-shrink .navbar-nav .nav-link.active{
	color: #ffffff;
}

#mainNav.navbar-shrink .navbar-brand img{
	max-width: 130px;
}
        </style>
    </head>
    
    <body>
 

<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
			<img class="img-fluid" src="images/logo.png" alt="" />
		</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger active" href="#home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" active href="#about">About Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" active href="#services">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" active href="#portfolio">Portfolio</a>
            </li>
			<li class="nav-item">
              <a class="nav-link js-scroll-trigger" active href="#blog">Blog</a>
            </li>
			<li class="nav-item">
              <a class="nav-link js-scroll-trigger" active href="#team">Our Team</a>
            </li>
			<li class="nav-item">
              <a class="nav-link js-scroll-trigger" active href="#pricing">Pricing</a>
            </li>
			<li class="nav-item">
              <a class="nav-link js-scroll-trigger" active href="#contact">Contect Us</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>    

<div class="sidenav">

<%
String[] pathnames;

        // Creates a new File instance by converting the given pathname string
        // into an abstract pathname
        File f = new File("C:\\Users\\Akshay Patidar\\CodeHub\\web\\Code Repository");

        // Populates the array with names of files and directories
        pathnames = f.list();

        // For each pathname in the pathnames array
        for (String pathname : pathnames) {
            
%>
<a href="C_Show_Files_Repository.jsp?reponame=<%=pathname%>"><%=pathname%></a>
  

<%}%>
</div>
<div class="main">
            <form name="form1" method="POST"  id="register-form" enctype="multipart/form-data" class="register-form input">
                <div class="form-group col-md-10 form-group p_star">
                    <input type="text" name="languageEnter" placeholder="Enter New Language Name" size="30" class="input100 form-control shadow p-3 mb-5 bg-white rounded"><br>
                    <input type="file" name="languageLogo">
                    <button type="submit" class="btn btn-primary" formaction="storesubjectebook">Add</button>
                </div>        
            </form><br><br>  
            <h2 style="color: yellow">Sidebar</h2>
  <p>This sidebar is of full height (100%) and always shown.</p>
  <p>Scroll down the page to see the result.</p>
  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
</div>
           
    </body>
</html>

