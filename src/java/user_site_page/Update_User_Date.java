/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user_site_page;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Akshay Patidar
  */@MultipartConfig(maxFileSize = 16177216)

public class Update_User_Date extends HttpServlet {

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
              Connection con = null;
              HttpSession session = request.getSession();
              String uid =(String) session.getAttribute("user");
              String name1 = request.getParameter("name");
              String email = request.getParameter("email");
              String pass1 = request.getParameter("pass");
              String phone1 = request.getParameter("phone");
              String address1 = request.getParameter("address");
              Part part = request.getPart("image");
                  try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
    
                    PreparedStatement ps=con.prepareStatement("delete from user_site_info where email='"+uid+"'");
                    

                    ps.executeUpdate();
                    
                    
                    String query = "insert into user_site_info values (?,?,?,?,?,?)";
                    PreparedStatement pt = con.prepareStatement(query);

                    pt.setString(1, name1);
                    pt.setString(2, email);
                    pt.setString(3, pass1);
                    pt.setString(5, phone1);
                    pt.setString(4, address1);

                    InputStream is = part.getInputStream();
                    pt.setBlob(6, is);

                    pt.executeUpdate();
                    RequestDispatcher rd=request.getRequestDispatcher("Rename_User_Repository?newID="+email);  
                    rd.forward(request, response);
                }
                catch( ClassNotFoundException e)
               {
                  out.println("class not found exception");
               }
               catch(SQLException e)
               {
                    out.println("sql exception");
               }    
    }         
}
