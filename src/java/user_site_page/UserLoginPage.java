/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user_site_page;


import user_site_page.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import java.sql.*;
import javax.servlet.http.HttpSession;
import user_site_page.UserValidate;

public class UserLoginPage extends HttpServlet {

  
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           
         String email = request.getParameter("email2");
         String password = request.getParameter("password2");
         
         response.setContentType("text/html");
         PrintWriter out = response.getWriter();

                       
          
             if(UserValidate.validateUser(email, password))
             {
                 
                 HttpSession session = request.getSession();
                session.setAttribute("user",email);
                 RequestDispatcher rs = request.getRequestDispatcher("U_Login_Home_Page.jsp");
                 rs.forward(request, response);
              }
              else
              {
                 RequestDispatcher rs = request.getRequestDispatcher("U_User_login.jsp?msg=invalid");
                 rs.include(request, response);
              }
            /*while(rs.next())
            {
                String a = rs.getString(1);
                String b = rs.getString(2);
            }             
            if(a==id&&b==pass)
            {
                 out.println("<h1>you are UserValidate user</h1>");
            }
            else
            {
                
            }   */
          // pt.executeQuery();
            
           
         }    
       
    }


