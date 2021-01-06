package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.tomcat.util.codec.binary.Base64;
import java.sql.*;
import java.io.*;

public final class U_005fC_005fSelect_005fLanguage_jsp extends org.apache.jasper.runtime.HttpJspBase
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

 if (session.getAttribute("user") != null) {
		session.getAttribute("user");
	
			} else {
				response.sendRedirect("U_User_home_page.jsp");
			}
      
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("  <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("  <title>Source code select langugae</title>\n");
      out.write("  <script src=\"js/bootstrap.bundle.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>  \n");
      out.write("\n");
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
      out.write("        $(document).ready(function() {\n");
      out.write(" // executes when HTML-Document is loaded and DOM is ready\n");
      out.write("console.log(\"document is ready\");\n");
      out.write("  \n");
      out.write("\n");
      out.write("  $( \".card\" ).hover(\n");
      out.write("  function() {\n");
      out.write("    $(this).addClass('shadow-lg').css('cursor', 'pointer'); \n");
      out.write("  }, function() {\n");
      out.write("    $(this).removeClass('shadow-lg');\n");
      out.write("  }\n");
      out.write(");\n");
      out.write("  \n");
      out.write("// document ready  \n");
      out.write("});\n");
      out.write("\n");
      out.write("function confirmDeleteModal(id){\n");
      out.write("    $('#deleteModal').modal();\n");
      out.write("\t$('#deleteButton').html('<a class=\"btn btn-danger\" onclick=\"deleteData('+id+')\">Delete</a>');\n");
      out.write("}     \n");
      out.write("function deleteData(id){\n");
      out.write("  // do your stuffs with id\n");
      out.write("  $(\"#successMessage\").html(\"Record With id \"+id+\" Deleted successfully!\");\n");
      out.write("  $('#deleteModal').modal('hide'); // now close modal\n");
      out.write("}   \n");
      out.write("        </script>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            \n");
      out.write("body {\n");
      out.write("  font-family: \"Lato\", sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar {\n");
      out.write("  overflow: hidden;\n");
      out.write("  background-color: #333;\n");
      out.write("  position: fixed;\n");
      out.write("  top: 0;\n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar a {\n");
      out.write("  float: left;\n");
      out.write("  display: block;\n");
      out.write("  color: #f2f2f2;\n");
      out.write("  text-align: center;\n");
      out.write("  padding: 14px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  font-size: 17px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(".repofile{\n");
      out.write("    background-color: #f2f2f2;\n");
      out.write("    margin-top: 7%;\n");
      out.write("    padding-top: 4%;\n");
      out.write("    padding-bottom: 6%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("  div.lang{\n");
      out.write("      margin-top: 2%;\n");
      out.write("      margin-left: 3%;   \n");
      out.write("  }\n");
      out.write("  .headerimg{\n");
      out.write("    margin-top: 6%;  \n");
      out.write("  }\n");
      out.write("  .link li a:hover{\n");
      out.write("      background-color: white;\n");
      out.write("      color: black;\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("  div.language h1{\n");
      out.write("      text-align: center;\n");
      out.write("      margin-top: 3%;\n");
      out.write("      \n");
      out.write("  }\n");
      out.write("  .form form{\n");
      out.write("      padding-top: 20%;\n");
      out.write("      padding-bottom:  20%;\n");
      out.write("      padding-left: 3%;\n");
      out.write("      padding-right: 3%;\n");
      out.write("      background-color: #e6f5ff;\n");
      out.write("  }\n");
      out.write("  .form h2{\n");
      out.write("      text-align: center;\n");
      out.write("  }\n");
      out.write("  .headerc{\n");
      out.write("      background-color: #333;\n");
      out.write("  }\n");
      out.write("  .headerc h1{\n");
      out.write("    margin-top: 5%;  \n");
      out.write("    color: white;\n");
      out.write("    text-align: center;\n");
      out.write("    padding-top: 5%;\n");
      out.write("    padding-bottom: 5%;\n");
      out.write("  }.footer-menu a {\n");
      out.write("                  font-size: 14px;\n");
      out.write("                  font-weight: 700;\n");
      out.write("                  color: #444;\n");
      out.write("                  padding: 10px;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                footer {\n");
      out.write("                  text-align: center;\n");
      out.write("                  background: #ffffff;\n");
      out.write("                  padding: 50px 0px;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                footer .footer-logo {\n");
      out.write("                  color: #555;\n");
      out.write("                  display: block;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                footer p.copyright-text {\n");
      out.write("                  font-weight: 300;\n");
      out.write("                  font-size: 12px;\n");
      out.write("                  color: #888;\n");
      out.write("                  letter-spacing: 3px;\n");
      out.write("                  margin-top: 15px;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                footer p.copyright-text a {\n");
      out.write("                  color: #282828;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                footer p.copyright-text a:hover {\n");
      out.write("                  text-decoration: none;\n");
      out.write("                }\n");
      out.write("                .btn-main {\n");
      out.write("  color: #fff;\n");
      out.write("  border-radius: 30px;\n");
      out.write("  font-size: 18px;\n");
      out.write("  padding: 15px 40px;\n");
      out.write("  display: inline-block;\n");
      out.write("  background-color: #f9a743;\n");
      out.write("  box-shadow: 0 15px 40px rgba(249, 167, 68, 0.5);\n");
      out.write("  background-image: linear-gradient(bottom, rgba(255, 239, 206, 0) 0%, rgba(255, 239, 206, 0.25) 100%);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn-main:hover, .btn-main:focus {\n");
      out.write("  background-color: #f9a743;\n");
      out.write("  color: #fff;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn-main-sm {\n");
      out.write("  padding: 12px 35px;\n");
      out.write("  text-transform: uppercase;\n");
      out.write("  font-size: 14px;\n");
      out.write("  font-weight: bold;\n");
      out.write("}\n");
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
      out.write("                                <a class=\"border\" href=\"U_Login_Home_Page.jsp\" style=\"color:white\">CODEHUB</a> \n");
      out.write("                            </div>\n");
      out.write("                            <ul class=\"nav navbar-nav link\">\n");
      out.write("                                          <li><a href=\"U_Login_Home_Page.jsp\">Home</a></li>\n");
      out.write("                                            <li><a href=\"U_Admin_Code_Select_Language.jsp\">Admin Code</a></li>\n");
      out.write("                                            <li><a href=\"U_T_Select_Language.jsp\">Tutorial</a></li>\n");
      out.write("                                            <li><a href=\"U_Q_Select_Language_Quiz.jsp\">Quiz</a></li>\n");
      out.write("                                            <li><a href=\"U_V_Select_Language.jsp\">Video</a></li>\n");
      out.write("                                            <li><a href=\"U_E_Select_Language.jsp\">Ebook</a></li>\n");
      out.write("                             </ul>\n");
      out.write("                             <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                                <li><a class=\"btn btn-secondary\" href=\"UserLogout\">Logout</a></li>\n");
      out.write("                 </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("                      <h1><b>Manage Your Source Code With CodeHub</b></h1>   \n");
      out.write("\n");
      out.write("   </div> \n");
      out.write("  <div class=\"headerimg\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("          <div class=\"row align-items-center justify-content-center\">\n");
      out.write("            <div class=\"col-xl-6 col-md-6  \">\n");
      out.write("                <div class=\" \">\n");
      out.write("                    <div class=\"form-group col-md-10 form-group p_star form\">\n");
      out.write("                        <a class=\"btn btn-main\" href=\"U_C_Create_New_Language.jsp\">Add New Language</a>\n");
      out.write("                    </div>        \n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-xl-6 col-md-6\">\n");
      out.write("                  <img src=\"imgaes/repo.jpg\" width=\"600px\" height=\"550px\">\n");
      out.write("            </div>   \n");
      out.write("          </div>   \n");
      out.write("       </div>   \n");
      out.write("  </div>\n");
      out.write("  <!--/.Carousel Wrapper-->\n");
      out.write("   <div class=\"repofile\"> \n");
      out.write("            \n");
      out.write("       <div class=\"container-fluid language\">\n");
      out.write("          \n");
      out.write("           <div class=\"row\">\n");
      out.write("               \n");
      out.write("      ");

       String user_id = (String) session.getAttribute("user");
            String[] pathnames;
            File f = new File("C:\\Users\\Akshay Patidar\\CodeHub\\web\\User Code Repository\\"+user_id+" ");
            pathnames = f.list();
            for (String pathname : pathnames) {
    
        
      out.write("\n");
      out.write("        \n");
      out.write("        <div class=\"col-sm-2 lang \">\n");
      out.write("        <div class=\"card w-85\" >  \n");
      out.write("            \n");
      out.write("                <a href=\"U_C_Select_Repository.jsp?languageEnter=");
      out.print(pathname);
      out.write("\"><img class=\"card-img-top\" src=\"imgaes\\folder.jpg\"  width=\"170\" height=\"170\" alt=\"img\"></a>                     \n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <div class=\"row align-items-center justify-content-center\">\n");
      out.write("                        <div class=\"col-8\">\n");
      out.write("                            <a class=\"card-link text-left\" style=\"font-size:20px;\" href=\"U_C_Select_Repository.jsp?languageEnter=");
      out.print(pathname);
      out.write('"');
      out.write('>');
      out.print(pathname);
      out.write("</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-2\">\n");
      out.write("                            <a  href=\"U_C_Delete_Language?languageN=");
      out.print(pathname);
      out.write("\" onclick=\"if (confirm('Are you sure you want to delete?')) form.action='/Config?pg=FIBiller&amp;cmd=delete'; else return false;\"> \n");
      out.write("                                <img title=\"delete language\" src=\"imgaes/delete.jpg\" width=\"35px\" height=\"35px\">\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div> \n");
      out.write("                </div>   \n");
      out.write("        </div>\n");
      out.write("        </div> \n");
      out.write("\n");

    }


      out.write("\n");
      out.write("           </div>     \n");
      out.write("           \n");
      out.write("       </div>  \n");
      out.write("   </div>    \n");
      out.write("      <!--Section: Products v.3-->     \n");
      out.write("    <footer>\n");
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
      out.write("       </footer>\n");
      out.write("  \n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
