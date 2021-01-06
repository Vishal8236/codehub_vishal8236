package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class U_005fUser_005fHome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 if (session.getAttribute("user") != null) {
		session.getAttribute("user");
	
			} else {
				response.sendRedirect("Admin_login.jsp");
			}
      
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,700|Open+Sans:400,300,700,800\" rel=\"stylesheet\" media=\"screen\">\n");
      out.write("\n");
      out.write("        <link href=\"A_css/bootstrap.min.css\" rel=\"stylesheet\" media=\"screen\">\n");
      out.write("        <link href=\"A_css/style.css\" rel=\"stylesheet\" media=\"screen\">\n");
      out.write("    <link href=\"A_css/default.css\" rel=\"stylesheet\" media=\"screen\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style/admin_home.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <ul>\n");
      out.write("            <li><a href=\"#\">Profile</a></li> &nbsp;&nbsp;\n");
      out.write("            <li><a href=\"./C_Select_Language.jsp\">Code</a></li> &nbsp;&nbsp;\n");
      out.write("            <li><a href=\"./T_Select_Language.jsp\" >Tutorials</a></li> &nbsp;&nbsp;\n");
      out.write("             <li><a href=\"#\">Video</a></li> &nbsp;&nbsp;\n");
      out.write("             <li><a href=\"./Q_Select_Language_Quiz.jsp\">Quiz</a></li> &nbsp;&nbsp;\n");
      out.write("             <li><a href=\"./E_Select_Language.jsp\">Ebook</a></li>&nbsp;&nbsp;   \n");
      out.write("            <li><a href=\"./User_details_view.jsp\">view user</a></li> &nbsp;&nbsp;\n");
      out.write("            <li><a href=\"adminlogout\">Logout</a></li> &nbsp;&nbsp;\n");
      out.write("        </ul>\n");
      out.write("        <div id=\"footer\">\n");
      out.write("           <section id=\"bottom-widget\" class=\"home-section bg-white\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-md-4\">\n");
      out.write("          <div class=\"contact-widget wow bounceInLeft\">\n");
      out.write("            <i class=\"fa fa-map-marker fa-4x\"></i>\n");
      out.write("            <h5>Main Office</h5>\n");
      out.write("            <p>\n");
      out.write("              Mandsour\n");
      out.write("            </p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-4\">\n");
      out.write("          <div class=\"contact-widget wow bounceInUp\">\n");
      out.write("            <i class=\"fa fa-phone fa-4x\"></i>\n");
      out.write("            <h5>Call</h5>\n");
      out.write("            <p>\n");
      out.write("              9630278503<br> 7974980428<br>8839051547\n");
      out.write("\n");
      out.write("            </p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-4\">\n");
      out.write("          <div class=\"contact-widget wow bounceInRight\">\n");
      out.write("            <i class=\"fa fa-envelope fa-4x\"></i>\n");
      out.write("            <h5>Email us</h5>\n");
      out.write("            <p>\n");
      out.write("              vishalpatidar111@gmail.com<br />vp969170@gmail.com\n");
      out.write("            </p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"row mar-top30\">\n");
      out.write("        <div class=\"col-md-12\">\n");
      out.write("          <h5>We're on social networks</h5>\n");
      out.write("          <ul class=\"social-network\">\n");
      out.write("            <li><a href=\"#\">\n");
      out.write("                <span class=\"fa-stack fa-2x\">\n");
      out.write("                  <i class=\"fa fa-circle fa-stack-2x\"></i>\n");
      out.write("                  <i class=\"fa fa-facebook fa-stack-1x fa-inverse\"></i>\n");
      out.write("                </span></a>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\">\n");
      out.write("                <span class=\"fa-stack fa-2x\">\n");
      out.write("                  <i class=\"fa fa-circle fa-stack-2x\"></i>\n");
      out.write("                  <i class=\"fa fa-dribbble fa-stack-1x fa-inverse\"></i>\n");
      out.write("                </span></a>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\">\n");
      out.write("                <span class=\"fa-stack fa-2x\">\n");
      out.write("                  <i class=\"fa fa-circle fa-stack-2x\"></i>\n");
      out.write("                  <i class=\"fa fa-twitter fa-stack-1x fa-inverse\"></i>\n");
      out.write("                </span></a>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\">\n");
      out.write("                <span class=\"fa-stack fa-2x\">\n");
      out.write("                  <i class=\"fa fa-circle fa-stack-2x\"></i>\n");
      out.write("                  <i class=\"fa fa-pinterest fa-stack-1x fa-inverse\"></i>\n");
      out.write("                </span></a>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </section>\n");
      out.write("        </div>\n");
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
