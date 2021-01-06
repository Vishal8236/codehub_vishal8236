<%-- 
    Document   : Select_Language
    Created on : 5 Feb, 2020, 6:33:52 PM
    Author     : Akshay Patidar
--%>
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>show content</title>
   

       <link rel="stylesheet" href="css/bootstrap.css">
       <link rel="stylesheet" href="css/bootstrap.min.css">
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
                        }
                        .content pre{
                            margin-left: 3%;
                            margin-bottom: 3%;
                            margin-right: 3%;
                            margin-top: 3%;
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
                      <h1><b>Welcome In CodeHub Tutorial</b></h1>   

   </div>
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

