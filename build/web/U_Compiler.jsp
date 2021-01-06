<%-- 
    Document   : U_Compiler
    Created on : 5 Apr, 2020, 3:17:31 PM
    Author     : Akshay Patidar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
     
    
       <link rel="stylesheet" href="css/bootstrap-grid.css">
       <link rel="stylesheet" href="css/bootstrap-grid.min.css">
       <link rel="stylesheet" href="css/bootstrap-reboot.css">
       <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
       <link rel="stylesheet" href="css/bootstrap.css">
       <link rel="stylesheet" href="css/bootstrap.min.css">
    
       <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"  crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"  crossorigin="anonymous"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"  crossorigin="anonymous"></script>
        <style type="text/css">
            .login{
                margin-top: 10%;
                margin-left: 25%;
            }
        </style>
       
    </head>
    <body>
        <form method="get" action="U_Comp_Create_File">
        <div class="col-lg-6 col-md-6 login">
                    <div class="login_part_form">
                        <div class="login_part_form_iner">
                            <h3>&nbsp; Enter your Code!</h3>
                           
                                <div class="col-md-12 form-group p_star"> <br>
                                  <input class="input100 form-control"  type="text" id="classn" name="classname" value=""
                                         placeholder="Enter Class Name" required><br>
                                  <textarea cols="20" rows="10" name="codebox" id="codebox" class="form-control" required>
                        
                                  </textarea><br>
                                  <input type="submit"  value="submit" class="btn_3 btn btn-info"  >
                                  &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                                  <input type="reset" value="Cancel" class="btn_3 btn btn-primary">
                                </div>
                            
                        </div>
                    </div>
                </div>
            </form>
        
    </body>
</html>
