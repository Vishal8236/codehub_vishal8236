<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta http-equiv="x-ua-compatible" content="ie=edge">
      <title>Quiz language topic name</title>
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
                    @media screen and (max-height: 450px) {
                      .sidenav {padding-top: 15px;}
                      .sidenav a {font-size: 18px;}
                    }
                     .link li a:hover{
                          background-color: white;
                          color: black;
                      }
                      .sidenav{
                          margin-top: 8%;
                      }
                     .td1{
                       text-align: left;
                       padding: 7px;

                   }
                   .deletecheck{
                       text-align: right;
                       width: 20px;
                       height: 20px;
                   }
                   .ques input{
                       text-align: right;
                   }
                   .selectAll{
                       padding-bottom: 2%;
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
                      <h1><b>Welcome In CodeHub Quiz</b></h1>   
            </div>
            <div class="sidenav">       
                <%
                    String connectionURL = "jdbc:mysql://localhost:3306/quiz1";
                    String user = "root"; 
                    String pass = "1234";
                    String topic2 = request.getParameter("topic1");
                    Connection con = null;
                    session.setAttribute("topic", topic2);
                     String aaa = (String) session.getAttribute("table2");
                    // String aaa = "quizques"+lang3;

                    try{
                          Class.forName("com.mysql.jdbc.Driver");
                          con = DriverManager.getConnection(connectionURL, user, pass);

                          // PreparedStatement ps = con.prepareStatement("select quizjavatopicques.question , quizjavatopicques.option1 , quizjavatopicques.option2 , quizjavatopicques.option3 , quizjavatopicques.option4 , quizjavatopicques.answer from quizjavatopicques inner join quizjavatopic on quizjavatopicques.topic='"+topic2+"' = quizjavatopic.topicname='"+topic2+"'");

                           PreparedStatement ps = con.prepareStatement("select * from "+aaa+" where topic='"+topic2+"'");
                          ResultSet rs = ps.executeQuery();

                          while(rs.next()){

                              String ques1 = rs.getString("question");
                              String op1 = rs.getString("option1");
                              String op2 = rs.getString("option2");
                              String op3 = rs.getString("option3");
                              String op4 = rs.getString("option4");
                              String ans1 = rs.getString("answer");
                 %>
                    <div class="container">
                        <table class="" style="" > 
                            <tr>
                            <div class="row ques">
                                <div class="col-10">
                                    <h2>Ques. <%=ques1%></h2> 
                                </div>
                                
                            </div>
                            </tr>
                            <tr>
                                <td class="td1"><input type="radio" name="radio" class="checkbox"></td>
                                <td class="td1" style="font-size: 30px;"><p><%=op1%></p></td>
                            </tr>
                            <tr>
                                <td class="td1"><input type="radio" name="radio"></td>
                                <td class="td1" style="font-size: 30px;"><p><%=op2%></p></td>
                            </tr>
                            <tr>
                                <td class="td1"><input type="radio" name="radio"></td>
                                <td class="td1" style="font-size: 30px;"><p><%=op3%></p></td>
                            </tr>
                            <tr>
                                <td class="td1"><input type="radio" name="radio"></td>
                                <td class="td1" style="font-size: 30px;"><p><%=op4%></p></td>
                            </tr>
                            <tr>
                                <td class="td1">Answer is &nbsp;&nbsp;- </td>
                                <td class="td1">&nbsp; <%=ans1%></td>
                            </tr>
                        </table> 
                            <hr noshade>  
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

