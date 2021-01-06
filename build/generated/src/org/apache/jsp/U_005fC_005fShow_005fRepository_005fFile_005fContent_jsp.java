package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;

public final class U_005fC_005fShow_005fRepository_005fFile_005fContent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"footer.css\">\n");
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
      out.write(".navbar a:hover {\n");
      out.write("  background: #ddd;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".repofile {\n");
      out.write("  margin-top: 100px;  \n");
      out.write("  margin-left: 250px; /* Same as the width of the sidenav */\n");
      out.write("  font-size: 28px; /* Increased text to enable scrolling */\n");
      out.write("  padding: 0px 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media screen and (max-height: 450px) {\n");
      out.write("  .sidenav {padding-top: 15px;}\n");
      out.write("  .sidenav a {font-size: 18px;}\n");
      out.write("}\n");
      out.write(".affix {\n");
      out.write("    top: 0;\n");
      out.write("    width: 100%;\n");
      out.write("    z-index: 9999 !important;\n");
      out.write("  }\n");
      out.write("  .code{\n");
      out.write("      background-color: #e6ffff;\n");
      out.write("  }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("                <div class=\"headerc\">  \n");
      out.write("                    <nav class=\"navbar navbar-expand-lg navbar-dark fixed-top\">\n");
      out.write("                        <div class=\"container-fluid \"> \n");
      out.write("                            <div class=\"navbar-header\">\n");
      out.write("                              <a class=\"border\" href=\"U_Login_Home_Page.jsp\" style=\"color:white\">CODEHUB</a> \n");
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
      out.write("                             </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </nav>\n");
      out.write("                        <h1><b>Manage Your Source Code With CodeHub</b></h1>   \n");
      out.write("                 </div>        \n");
      out.write("        <div class=\"repofile\">\n");
      out.write("            <textarea class=\"code\" rows=\"20\" cols=\"60\">\n");
      out.write("                ");

                    //user id name
                    String user_id = (String) session.getAttribute("user");
                    
                    String[] pathnames;
                    
                    //select language name
                    
                    String selectlanguage =(String) session.getAttribute("languagename");
                    
                    //repository name
                    String rname = (String) session.getAttribute("selectrepo");
                    
                    //file name 
                    String fname = request.getParameter("selectfname");
                   
                    //path name
                    String fileName = "D:\\my project codehub\\abc\\web\\User Code Repository\\"+user_id+"\\"+selectlanguage+"\\"+rname+"\\"+fname+"";
                    InputStream ins = application.getResourceAsStream(fileName);
                    try
                    {
                    BufferedReader br = new BufferedReader((new FileReader(fileName)));
                    String data;
                    while((data= br.readLine())!= null)
                    {
      out.write('\n');
      out.print(data);

                    }}
                    catch(IOException e)
                    {
                    out.println(e.getMessage());
                    }
                
      out.write("\n");
      out.write("            </textarea>\n");
      out.write("        </div>\n");
      out.write("            <footer>\n");
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
      out.write("    </body>\n");
      out.write("</html>\n");
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
