<% if (session.getAttribute("user") != null) {
		session.getAttribute("user");
	
			} else {
				response.sendRedirect("U_User_home_page.jsp");
			}
      %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
  .code{
      background-color: #e6ffff;
  }
        </style>
    </head>
    
    <body>
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
        <div class="repofile">
            <textarea class="code" rows="20" cols="60">
                <%
                    //user id name
                    String user_id = (String) session.getAttribute("user");
                    
                    String[] pathnames;
                    
                    //select language name
                    
                    String selectlanguage =(String) session.getAttribute("languagename");
                    
                    //repository name
                    String rname = (String) session.getAttribute("selectrepo");
                    
                    //file name 
                    String fname = request.getParameter("selectfname");
                   
                    //path name
                    String fileName = "D:\\my project codehub\\abc\\web\\User Code Repository\\"+user_id+"\\"+selectlanguage+"\\"+rname+"\\"+fname+"";
                    InputStream ins = application.getResourceAsStream(fileName);
                    try
                    {
                    BufferedReader br = new BufferedReader((new FileReader(fileName)));
                    String data;
                    while((data= br.readLine())!= null)
                    {%>
<%=data%><%
                    }}
                    catch(IOException e)
                    {
                    out.println(e.getMessage());
                    }
                %>
            </textarea>
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