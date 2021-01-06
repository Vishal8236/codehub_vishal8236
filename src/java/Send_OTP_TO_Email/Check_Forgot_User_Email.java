/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Send_OTP_TO_Email;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import user_site_page.UserValidate;

/**
 *
 * @author Akshay Patidar
 */
public class Check_Forgot_User_Email extends HttpServlet {

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
             
         String email = request.getParameter("email");
         

                       
          
             if(Ckeck_Forgot_Email.validateUserEmail(email))
             {
                 
                 HttpSession session = request.getSession();
                 session.setAttribute("userID_otp",email);
                 RequestDispatcher rs = request.getRequestDispatcher("Generate_OTP");
                 rs.forward(request, response);
                
              }
              else
              {
                 String msg = "fail"; 
                 HttpSession session = request.getSession();
                 session.setAttribute("message",msg);
                 RequestDispatcher rs = request.getRequestDispatcher("U_User_login.jsp");
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

