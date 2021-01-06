/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Send_OTP_TO_Email;

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
public class Update_User_Password extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String connectionURL = "jdbc:mysql://localhost:3306/project1";
              String user = "root";
              String pass = "1234";
              Connection con = null;
              PrintWriter out = response.getWriter();
              HttpSession session = request.getSession();
              String email =(String) session.getAttribute("userID_otp");
              String pass1 = request.getParameter("otp_pass1");
              
              try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
    
                     
                     PreparedStatement ps = con.prepareStatement("update user_site_info set password='"+pass1+"' where email='"+email+"'");
                     ps.executeUpdate();
              }
              catch(ClassNotFoundException e)
              {
                 out.print("some error");
              }
              catch(SQLException e)
              {
                 out.print("some sql error ");
              }
             RequestDispatcher rs = request.getRequestDispatcher("U_User_login.jsp?msg=null");
              rs.forward(request, response);
        }
}