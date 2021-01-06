package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.tomcat.util.codec.binary.Base64;
import java.sql.*;

public final class T_005fSelect_005fLanguage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 if (session.getAttribute("user") != null) {
		session.getAttribute("user");
	
			} else {
				response.sendRedirect("Admin_login.jsp");
			}
      
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("  <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("  <title>tutorial select language</title>\n");
      out.write("  \n");
      out.write("  <script src=\"js/bootstrap.bundle.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>  \n");
      out.write("        <script src=\"jquery/jquery.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style/Select_Language.css\">\n");
      out.write("       <link rel=\"stylesheet\" href=\"css/bootstrap-grid.css\">\n");
      out.write("       <link rel=\"stylesheet\" href=\"css/bootstrap-grid.min.css\">\n");
      out.write("       <link rel=\"stylesheet\" href=\"css/bootstrap-reboot.css\">\n");
      out.write("       <link rel=\"stylesheet\" href=\"css/bootstrap-reboot.min.css\">\n");
      out.write("       <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("       <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write(" <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("                $(document).ready(function() {\n");
      out.write("               console.log(\"document is ready\");\n");
      out.write("                  $( \".card\" ).hover(\n");
      out.write("                  function() {\n");
      out.write("                    $(this).addClass('shadow-lg').css('cursor', 'pointer'); \n");
      out.write("                  }, function() {\n");
      out.write("                    $(this).removeClass('shadow-lg');\n");
      out.write("                  }\n");
      out.write("                );\n");
      out.write("                });\n");
      out.write("       </script>    \n");
      out.write("        <style type=\"text/css\">\n");
      out.write("                    body {\n");
      out.write("                      font-family: \"Lato\", sans-serif;\n");
      out.write("                    }\n");
      out.write("                    .navbar {\n");
      out.write("                      overflow: hidden;\n");
      out.write("                      background-color: #333;\n");
      out.write("                      position: fixed;\n");
      out.write("                      top: 0;\n");
      out.write("                      width: 100%;\n");
      out.write("                    }\n");
      out.write("                    .navbar a {\n");
      out.write("                      float: left;\n");
      out.write("                      display: block;\n");
      out.write("                      color: #f2f2f2;\n");
      out.write("                      text-align: center;\n");
      out.write("                      padding: 14px 16px;\n");
      out.write("                      text-decoration: none;\n");
      out.write("                      font-size: 17px;\n");
      out.write("                    }\n");
      out.write("                    .repofile{\n");
      out.write("                        background-color: #f4f4f4;\n");
      out.write("                        margin-top: 7%;\n");
      out.write("                        padding-top: 5%;\n");
      out.write("                        padding-bottom: 5%;\n");
      out.write("                    }\n");
      out.write("                   \n");
      out.write("                      div.lang{\n");
      out.write("                          margin-top: 2%;\n");
      out.write("                          margin-left: 3%;   \n");
      out.write("                      }\n");
      out.write("                      .headerimg{\n");
      out.write("                        margin-top: 6%;  \n");
      out.write("                      }\n");
      out.write("                      .link li a:hover{\n");
      out.write("                          background-color: white;\n");
      out.write("                          color: black;\n");
      out.write("                      }\n");
      out.write("\n");
      out.write("                      div.language h1{\n");
      out.write("                          text-align: center;\n");
      out.write("                          margin-top: 3%;\n");
      out.write("\n");
      out.write("                      }\n");
      out.write("                      .form form{\n");
      out.write("                          padding-top: 20%;\n");
      out.write("                          padding-bottom:  20%;\n");
      out.write("                          padding-left: 3%;\n");
      out.write("                          padding-right: 3%;\n");
      out.write("                          background-color: #e6f5ff;\n");
      out.write("                      }\n");
      out.write("                      .form h2{\n");
      out.write("                          text-align: center;\n");
      out.write("                      }\n");
      out.write("                      .headerc{\n");
      out.write("                          background-color: #333;\n");
      out.write("                      }\n");
      out.write("                      .headerc h1{\n");
      out.write("                        margin-top: 5%;  \n");
      out.write("                        color: white;\n");
      out.write("                        text-align: center;\n");
      out.write("                        padding-top: 5%;\n");
      out.write("                        padding-bottom: 5%;\n");
      out.write("                      }\n");
      out.write("                      .footer-menu a {\n");
      out.write("                            font-size: 14px;\n");
      out.write("                            font-weight: 700;\n");
      out.write("                            color: #444;\n");
      out.write("                            padding: 10px;\n");
      out.write("                          }\n");
      out.write("\n");
      out.write("                          footer {\n");
      out.write("                            text-align: center;\n");
      out.write("                            background: #ffffff;\n");
      out.write("                            padding: 50px 0px;\n");
      out.write("                          }\n");
      out.write("\n");
      out.write("                          footer .footer-logo {\n");
      out.write("                            color: #555;\n");
      out.write("                            display: block;\n");
      out.write("                          }\n");
      out.write("\n");
      out.write("                          footer p.copyright-text {\n");
      out.write("                            font-weight: 300;\n");
      out.write("                            font-size: 12px;\n");
      out.write("                            color: #888;\n");
      out.write("                            letter-spacing: 3px;\n");
      out.write("                            margin-top: 15px;\n");
      out.write("                          }\n");
      out.write("\n");
      out.write("                          footer p.copyright-text a {\n");
      out.write("                            color: #282828;\n");
      out.write("                          }\n");
      out.write("\n");
      out.write("                          footer p.copyright-text a:hover {\n");
      out.write("                            text-decoration: none;\n");
      out.write("                          }\n");
      out.write("\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("  <!-- Navbar -->\n");
      out.write("  <div class=\"headerc\">  \n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark fixed-top\">\n");
      out.write("            <div class=\"container-fluid \"> \n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                                <a class=\"border\" href=\"Admin_home.jsp\" style=\"color:white\">CODEHUB</a> \n");
      out.write("                            </div>\n");
      out.write("                            <ul class=\"nav navbar-nav link\">\n");
      out.write("                                          <li><a href=\"Admin_home.jsp\">Home</a></li>\n");
      out.write("                                            <li><a href=\"C_Select_Language.jsp\">Code</a></li>\n");
      out.write("                                            <li><a href=\"T_Select_Language.jsp\">Tutorial</a></li>\n");
      out.write("                                            <li><a href=\"Q_Select_Language_Quiz.jsp\">Quiz</a></li>\n");
      out.write("                                            <li><a href=\"V_Select_Language.jsp\">Video</a></li>\n");
      out.write("                                            <li><a href=\"E_Select_Language.jsp\">Ebook</a></li>\n");
      out.write("                             </ul>\n");
      out.write("                             <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                                <li><a class=\"btn btn-secondary\" href=\"AdminLogout\">Logout</a></li>\n");
      out.write("                 </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("                      <h1><b>Welcome In CodeHub Tutorials</b></h1>   \n");
      out.write("\n");
      out.write("   </div> \n");
      out.write("  <div class=\"headerimg\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("          <div class=\"row align-items-center justify-content-center\">\n");
      out.write("            <div class=\"col-xl-6 col-md-6  \">\n");
      out.write("                <div class=\" \">\n");
      out.write("                    <div class=\"form-group col-md-10 form-group p_star form\">\n");
      out.write("                        <h2><b>Add New Language</b></h2>\n");
      out.write("                        <form name=\"form1\" method=\"post\"  id=\"register-form\" enctype=\"multipart/form-data\" class=\"register-form input\">\n");
      out.write("                            Language name:\n");
      out.write("                                 <input type=\"text\" name=\"languageEnter\" placeholder=\"Enter New Language Name\" size=\"30\" class=\"input100 form-control\" required>\n");
      out.write("                                 <br>\n");
      out.write("                            Language logo:\n");
      out.write("                                 <input type=\"file\" name=\"languageLogo\" required>\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary\" formaction=\"storelanguageatuto\">Add</button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>        \n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-xl-6 col-md-6\">\n");
      out.write("                  <img src=\"imgaes/quiz.jpg\" width=\"600px\" height=\"550px\">\n");
      out.write("            </div>   \n");
      out.write("          </div>    \n");
      out.write("       </div>   \n");
      out.write("  </div>\n");
      out.write("  <!--/.Carousel Wrapper-->\n");
      out.write("   <div class=\"repofile\"> \n");
      out.write("            \n");
      out.write("       <div class=\"container-fluid language\">\n");
      out.write("          \n");
      out.write("           <div class=\"row\">\n");
      out.write("               \n");
      out.write("           \n");
      out.write("      ");

              String connectionURL = "jdbc:mysql://localhost:3306/tutorial1";
              String user = "root";
              String pass = "1234";
 
              Connection con = null;
              int count=0;
              try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
    
                    PreparedStatement ps = con.prepareStatement("select name , logo from languagename ");
                    ResultSet rs = ps.executeQuery();
 
                    while(rs.next()){
                        Blob blob = rs.getBlob("logo");
                        byte byteArray[] = blob.getBytes(1, (int)blob.length());
                        String base64Image = new String(Base64.encodeBase64(byteArray)); 
                        request.setAttribute("imageBt", base64Image);
                        String language1 = rs.getString("name");
        
      out.write("\n");
      out.write("        <div class=\"col-sm-2 lang \">\n");
      out.write("        <div class=\"card w-85\" >  \n");
      out.write("            \n");
      out.write("                <a href=\"tutochecktableindatabase?language=");
      out.print(language1);
      out.write("\"><img class=\"card-img-top\" src=\"data:image/jpg;base64,");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope['imageBt']}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"  width=\"170\" height=\"170\" alt=\"\"></a>\n");
      out.write("                     \n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <div class=\"row align-items-center justify-content-center\">\n");
      out.write("                        <div class=\"col-8\">\n");
      out.write("                            <a class=\"card-link text-left\" style=\"font-size:20px;\" href=\"tutochecktableindatabase?language=");
      out.print(language1);
      out.write('"');
      out.write('>');
      out.print(language1);
      out.write("</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-2\">\n");
      out.write("                            <a  href=\"T_Delete_Language?languageN=");
      out.print(language1);
      out.write("\" onclick=\"if (confirm('Are you sure you want to delete?')) form.action='/Config?pg=FIBiller&amp;cmd=delete'; else return false;\"> \n");
      out.write("                                <img title=\"delete language\" src=\"imgaes/delete.jpg\" width=\"35px\" height=\"35px\">\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div> \n");
      out.write("                </div>   \n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("                  \n");
      out.write("        \n");

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

      out.write("\n");
      out.write("           </div>     \n");
      out.write("       </div>  \n");
      out.write("    </div>      \n");
      out.write("       <footer>\n");
      out.write("          <div class=\"container text-center\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <div class=\"block\">\n");
      out.write("                        <h2 href=\"Admin_home.jsp\" class=\"footer-logo mb-4\">Codehub</h2>\n");
      out.write("                        <ul class=\"list-inline footer-menu\">\n");
      out.write("                            <li class=\"list-inline-item\">\n");
      out.write("                                <a href=\"Admin_home.jsp\">HOME</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"list-inline-item\">\n");
      out.write("                                <a href=\"About.jsp\">ABOUT</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"list-inline-item\">\n");
      out.write("                                <a href=\"Service.jsp\">SERVICES</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"list-inline-item\">\n");
      out.write("                                <a href=\"Contect.jsp\">CONTACT</a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                        <p class=\"copyright-text\">Copyright &copy; <a href=\"http://www.codehub.com\">Codehub</a>|\n");
      out.write("                            All right reserved.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </footer>    \n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
