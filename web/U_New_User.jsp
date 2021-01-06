<%-- 
    Document   : New_User
    Created on : 5 Feb, 2020, 5:19:11 PM
    Author     : Akshay Patidar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form </title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="User_site_folder/fonts/material-icon/css/material-design-iconic-font.min.css">
            <link rel="stylesheet" href="style/Select_Language.css">
       <link rel="stylesheet" href="css/bootstrap-grid.css">
       <link rel="stylesheet" href="css/bootstrap-grid.min.css">
       <link rel="stylesheet" href="css/bootstrap-reboot.css">
       <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
       <link rel="stylesheet" href="css/bootstrap.css">
       <link rel="stylesheet" href="css/bootstrap.min.css">
 <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Main css -->
    <link rel="stylesheet" href="User_site_folder/css/style.css">
    <style type="text/css">
        .warn{
            margin-left: 30%;
            margin-right: 30%;
        }

    </style>
</head>
    
    
    <div class="main">
        <%
                  String email1 = request.getParameter("email");
                    if(email1.equals("invalid"))
                    {
                      %>
                      <div class="alert alert-danger alert-dismissible fade show warn text-center">
                                 <strong>Warning!</strong>&nbsp;&nbsp;This email is alerady login
                     </div>
                      <%
                    }
        %>
        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form name="form1" method="post" action="store_user_data" id="register-form" enctype="multipart/form-data" class="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Your Name" required/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password" required/>
                            </div>
                           
                            <div class="form-group">
                                <label for="phonenumber"><i class="zmdi-local-phone"></i></label>
                                <input type="text" name="phone" id="name" placeholder="Phone Number" required/>
                            </div>
                            <div class="form-group">
                                <label for="address"><i class="zmdi-my-location"></i></label>
                                <input type="text" name="address" id="name" placeholder="Your Address"/>
                            </div>
                            <div class="form-group">
                                Select Your Image:
                                <input type="file" name="image" id="name"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup"  id="signup" class="form-submit" value="Register"/>
                            </div>
                        </form>
                    </div>
                   
                </div>
            </div>
        </section>
        

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>

</html>
