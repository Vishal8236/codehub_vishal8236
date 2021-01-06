package user_site_page;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Akshay Patidar
 */
@WebServlet("/store_user_data")
@MultipartConfig(maxFileSize = 16177216)
public class store_user_data extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        String name1 = request.getParameter("name");
        String email = request.getParameter("email");
        String pass1 = request.getParameter("pass");
        String phone1 = request.getParameter("phone");
        String address1 = request.getParameter("address");
        Part part = request.getPart("image"); 
        String msg = "invalid";
        if(Check_Email.validateUserEmail(email))
             {
                 
                 RequestDispatcher rs = request.getRequestDispatcher("U_New_User.jsp?email="+msg);
                 rs.forward(request, response);
                
              }
              else
              { 
                 try
                    {
                     Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root","1234");

                    String query = "insert into user_site_info values (?,?,?,?,?,?)";
                    PreparedStatement pt = con.prepareStatement(query

                    );

                    pt.setString(1, name1);
                    pt.setString(2, email);
                    pt.setString(3, pass1);
                    pt.setString(5, phone1);
                    pt.setString(4, address1);

                    InputStream is = part.getInputStream();
                    pt.setBlob(6, is);

                    pt.executeUpdate();
                    HttpSession session = request.getSession();
                    session.setAttribute("email_id", email);

                   //out.println("<h1>data inserted</h1>");
                   RequestDispatcher rd=request.getRequestDispatcher("Create_Repository_For_User");  
                        rd.forward(request, response); 
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
        }

    
  