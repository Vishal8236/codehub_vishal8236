package Admin_site;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import org.apache.tomcat.util.codec.binary.Base64;

/**
 *
 * @author ABC
 */
public class Admin_Language extends HttpServlet {

    
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<html>\n" +
                    "<head>\n" +
                    "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n" +
                    " <title>servlet Page</title>");
       
       // out.println("<link rel=\"stylesheet\" href=\"Languagestyle.css\">");
       
          out.println("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\"  crossorigin=\"anonymous\">");
          out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css\"  crossorigin=\"anonymous\"> ");
          out.println(" <script src=\"https://code.jquery.com/jquery-3.1.1.slim.min.js\"  crossorigin=\"anonymous\"></script>\n" +
                        "<script src=\"https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js\"  crossorigin=\"anonymous\"></script>\n" +
                        "<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js\"  crossorigin=\"anonymous\"></script>");
          out.println("</head><body>");       
      
                
        out.println("<a href=\"Admin_home.html\">Home</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br><br>\n");
        out.println("<form name=\"myform\" action=\"\" method=\"post\" enctype=\"multipart/form-data\">\n" +
"            <input type=\"text\" placeholder=\"enter language name\" name=\"languageSe\" required>\n" +
            "  <input type=\"file\" name=\"languageLogo\">\n" +  
"            <button formaction=\"adminlanguagestore\" type=\"submit\">Add New</button>\n" +
"        </form>");
      //out.println("  <button formaction=\"Admin_LanguageStore\" >go</button>");
        out.println("<h1>select a language</h1> <br><br>");
        try{
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","1234");
                PreparedStatement ps=con.prepareStatement("select * from language");
               
                ResultSet rs=ps.executeQuery();
               
                while(rs.next())
                {
                    Blob blob = rs.getBlob("logo");
                     byte byteArray[] = blob.getBytes(1, (int)blob.length());
                  String base64Image = new String(Base64.encodeBase64(byteArray)); 
                  request.setAttribute("imageBt", base64Image);
                  String n = rs.getString("languagename"); 
                    //out.println("<h1 style = color:red>"+n+"</h1>");
                    //out.println("<img src='programmingimage/"+n+".png' height=\"100px\" width=\"100px\"> ");
                    //out.println(" <a class=\"btn_3 btn btn-primary\" href="+n+".html>"+n+"</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                    out.println("<a href=\"<%=n%>.html\"><img src=\"data:image/jpg;base64,${requestScope['imageBt']}\" width=\"100\" height=\"100\"/></a>");
                    
                   //"<img src="" +n+".png" height=\"100px\" width=\"100px\">\n" +  
                }
            }
            catch(Exception e){
                 e.printStackTrace();
            }       
    }
}
