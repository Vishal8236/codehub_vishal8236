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
   
</head>
    
    
    <div class="main">
      
        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Update profile</h2>
                        <form name="form1" method="post" action="Update_User_Date" id="register-form" enctype="multipart/form-data" class="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Your Name" required/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email" required/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password" required/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" required=""/>
                            </div>
                            <div class="form-group">
                                <label for="phonenumber"><i class="zmdi-local-phone"></i></label>
                                <input type="text" name="phone" id="name" placeholder="Phone Number" required/>
                            </div>
                            <div class="form-group">
                                <label for="address"><i class="zmdi-my-location"></i></label>
                                <input type="text" name="address" id="name" placeholder="Your Address" required/>
                            </div>
                            <div class="form-group">
                                Select Your Image:
                                <input type="file" name="image" id="name" required/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup"  id="signup" class="form-submit" value="Update"/>
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
