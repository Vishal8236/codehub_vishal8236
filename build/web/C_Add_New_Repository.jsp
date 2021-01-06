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
        <script src="js/bootstrap.bundle.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="footer.css">
        <style type="text/css">
            .login{
                margin-top: 3%;
                margin-left: 25%;
            }
            .hint
            {
                margin-top: 10%;
                margin-left: 25%;
                margin-right: 26%;
            }
        </style>
       
    </head>
    <body>
        <div class="hint"> 
            <div class="container text-center">
                <div class="alert alert-success alert-dismissible fade show warn">
                     &nbsp;&nbsp;Entered Repository Name Must Be Unique
                    </div>
            </div>
        </div>    
        <form method="POST" name="userlogin" action="C_Store_Repository">
        <div class="col-lg-6 col-md-6 login">
                    <div class="login_part_form">
                        <div class="login_part_form_iner">
                            <h3>Welcome CodeHub! <br>
                                Please Create New Repository</h3>
                           
                                <div class="col-md-12 form-group p_star"> <br>
                                  <input class="input100 form-control"  type="text"   name="repo" value=""
                                         placeholder="Enter Repository Name" required><br>
                                    
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

