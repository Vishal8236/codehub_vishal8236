/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminVideo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Akshay Patidar
 */
public class V_Delete_Language extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
 protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              response.setContentType("text/html;charset=UTF-8");
              PrintWriter out = response.getWriter();
              String connectionURL = "jdbc:mysql://localhost:3306/project1";
              String user = "root";
              String pass = "1234";
              String language = request.getParameter("languageN");
              Connection con = null;

              try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
    
                    PreparedStatement ps=con.prepareStatement("delete from videolanguage where name='"+language+"'");

                    ps.executeUpdate();
                    RequestDispatcher rd=request.getRequestDispatcher("V_Select_Language.jsp");  
                    rd.forward(request, response);
                }
                catch( ClassNotFoundException e)
               {
                    RequestDispatcher rd=request.getRequestDispatcher("V_Select_Language.jsp");  
                    rd.forward(request, response); 
                    out.println("class not found exception");
               }
               catch(SQLException e)
               {
                    RequestDispatcher rd=request.getRequestDispatcher("V_Select_Language.jsp");  
                    rd.forward(request, response);
                    out.println("sql exception");
               }    
    }
}
