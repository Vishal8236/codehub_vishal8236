<%-- 
    Document   : Select_Language
    Created on : 5 Feb, 2020, 6:33:52 PM
    Author     : Akshay Patidar
--%>
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
  <title>Material Design Bootstrap</title>
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
                      .sidenav{
                          margin-top: 8%;
                      }
                    .topic h1{
                        margin-left: 3%
                      }
                    .content{
                            border-left: 5px solid red;
                            margin-left: 3%;
                            background-color: #e6fff2;
                            padding-bottom: 4%;
                        }
                        .content pre{
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
                            margin-top: 5%;
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
  
            <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
                <div class="container-fluid"> 
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
                                 <li><a class="btn btn-secondary" href="AdminLogout">Logout</a></li>.&nbsp;.&nbsp;.&nbsp;.&nbsp;.&nbsp;
                                <li><a type="submit"  class="btn btn-info" href="T_create_content.jsp">Create New Tutorial</a></li>
                     </ul>
                </div>
            </nav>
  <div class="sidenav">
        
            <div class="container topic">
            <%
              String connectionURL = "jdbc:mysql://localhost:3306/tutorial1";
              String user = "root";
              String pass = "1234";
              String topic2 = request.getParameter("topic1");
              Connection con = null;
              
               String lang3 = (String) session.getAttribute("selectLanguage1");
               String tablen = (String) session.getAttribute("Squery");
              // String aaa = "quizques"+lang3;

              try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
    
                    // PreparedStatement ps = con.prepareStatement("select quizjavatopicques.question , quizjavatopicques.option1 , quizjavatopicques.option2 , quizjavatopicques.option3 , quizjavatopicques.option4 , quizjavatopicques.answer from quizjavatopicques inner join quizjavatopic on quizjavatopicques.topic='"+topic2+"' = quizjavatopic.topicname='"+topic2+"'");
                     
                     PreparedStatement ps = con.prepareStatement("select * from "+tablen+" where topicname='"+topic2+"'");
                    ResultSet rs = ps.executeQuery();
 
                    while(rs.next()){
                                               
                        
                        String topicn = rs.getString("topicname");
                        String info = rs.getString("details");
                       
    %>
    <div class="row">
        <div class="col-8">
            <h1><%=topicn%></h1>
        </div>
        <div class="col-2">
            <a class="btn btn-primary" href="T_Delete_Tutorial?topicn=<%=topic2%>" onclick="if (confirm('Are you sure you want to delete?')) form.action='/Config?pg=FIBiller&amp;cmd=delete'; else return false;">Delete Content </a>
        </div>
        <div class="col-2">
            <a class="btn btn-info" href="T_Update_Content.jsp?topic1=<%=topic2%>" >Update Content </a>
        </div>
    </div>
    
        <div class="content">
            <pre>
               
                 <%=info%>
            </pre> 
           
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

