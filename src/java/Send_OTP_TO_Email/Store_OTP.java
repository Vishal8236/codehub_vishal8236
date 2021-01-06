/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Send_OTP_TO_Email;

import java.io.IOException;
import java.io.InputStream;
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
import javax.servlet.http.Part;
import user_site_page.Check_Email;

/**
 *
 * @author Akshay Patidar
 */
public class Store_OTP extends HttpServlet {

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
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String email =(String) session.getAttribute("userID_otp");
        String otp1 = (String) session.getAttribute("otp");
        
                 try
                    {
                     Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root","1234");

                    String query = "insert into otp values (?,?)";
                    PreparedStatement pt = con.prepareStatement(query);

                    pt.setString(1, email);
                    pt.setString(2, otp1);


                    pt.executeUpdate();
                   RequestDispatcher rs = request.getRequestDispatcher("U_Enter_OTP.jsp");
                   rs.forward(request, response);
                   
                 }    
                 catch(ClassNotFoundException e)
                 {
                     out.println("<h1>class not found exception</h1>");
                 }
                 catch(SQLException e)
                 {
                     out.println("<h1>sql exception</h1>");
                 }

                 
              }
}