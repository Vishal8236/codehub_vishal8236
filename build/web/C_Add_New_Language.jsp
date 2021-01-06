    <%-- 
    Document   : Admin_login
    Created on : 5 Feb, 2020, 5:18:50 PM
    Author     : Akshay Patidar
--%>

<% if (session.getAttribute("user") != null) {
		session.getAttribute("user");
	
			} else {
				response.sendRedirect("Admin_login.jsp");
			}
      %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  crossorigin="anonymous">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"  crossorigin="anonymous"> 
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
        
        <form method="POST" action="C_Strore_Language">
        <div class="col-lg-6 col-md-6 login">
                    <div class="login_part_form">
                        <div class="login_part_form_iner">
                            <h3>Welcome CodeHub! <br>
                                Please Add New Language</h3>
                           
                                <div class="col-md-12 form-group p_star"> <br>
                                  <input class="input100 form-control"  type="text"   name="language" value=""
                                         placeholder="Enter Language Name" required><br>
                                    
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

