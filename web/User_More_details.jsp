<%-- 
    Document   : User_More_details
    Created on : 5 Feb, 2020, 11:18:56 PM
    Author     : Akshay Patidar
--%>
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
       
       <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700%7CAllura" rel="stylesheet">
	
	<!-- Stylesheets -->
	
	<link href="css/bootstrap.css" rel="stylesheet">
	
	<link href="css/ionicons.css" rel="stylesheet">
	
	<link href="css/fluidbox.min.css" rel="stylesheet">
	
	<link href="css/profile-styles.css" rel="stylesheet">
	
	<link href="css/responsive.css" rel="stylesheet">
        
        <link rel="stylesheet" href="User_site_folder/fonts">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%
               String email3 = request.getParameter("email1");
             
               
               String connectionURL = "jdbc:mysql://localhost:3306/project1";
               String user = "root";
               String pass = "1234";
 
               Connection con = null;
 
             try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
    
                    PreparedStatement ps = con.prepareStatement("select * from user_site_info where email='"+email3+"'");
                    ResultSet rs = ps.executeQuery();
 
                   while(rs.next()){
                       String name1 = rs.getString("name");
                       String email2 = rs.getString("email");
                       String address1 = rs.getString("address");
                       long phone1 = rs.getLong("phone");
                       Blob blob = rs.getBlob("image");
                       byte byteArray[] = blob.getBytes(1, (int)blob.length());
                       String base64Image = new String(Base64.encodeBase64(byteArray)); 
                       request.setAttribute("imageBt", base64Image);
        %>            
         
        <section class="intro-section" style="background-image: url(imgaes/3.jpg);padding-top: 200px; position: relative; background-size: cover; ">
		<div class="container">
			<div class="row">
				<div class="col-md-1 col-lg-2"></div>
				<div class="col-md-10 col-lg-8">
					<div class="intro">
                                            <form action="" method="post">
						<div class="profile-img"><img src="data:image/jpg;base64,${requestScope['imageBt']}" /></div>
						<h2><b><%=name1%></b></h2>
						<ul class="information margin-tb-40">
							
							<li><b>Email : </b><%=email2%></li>
							<li><b>Phone Number : </b><%=phone1%></li>
                                                        <li><b>Address : </b><%=address1%></li> <br>
                                                        <li><button class="btn btn-primary" formaction="Delete_User_Account.jsp?email4=<%=email2%>">Delete User Account</button></li>
						</ul>
                                                        <br>
						<ul class="social-icons">
							<li><a href="#"><i class="ion-social-pinterest"></i></a></li>
							<li><a href="#"><i class="ion-social-linkedin"></i></a></li>
							<li><a href="#"><i class="ion-social-instagram"></i></a></li>
							<li><a href="#"><i class="ion-social-facebook"></i></a></li>
							<li><a href="#"><i class="ion-social-twitter"></i></a></li>
						</ul>
                                            </form>            
					</div><!-- intro -->
				</div><!-- col-sm-8 -->
			</div><!-- row -->
		</div><!-- container -->
	</section><!-- intro-section -->
        
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
          <div>
    </div>  
        </div>
    </body>
</html>
