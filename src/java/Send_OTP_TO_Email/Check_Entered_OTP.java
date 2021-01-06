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
public class Check_Entered_OTP extends HttpServlet {

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
           
         HttpSession session = request.getSession();
        String email =(String) session.getAttribute("userID_otp");
        String otp = request.getParameter("enterotp");
         
         response.setContentType("text/html");
         PrintWriter out = response.getWriter();

                       
          
             if(Check_OTP.validateUserOTP(email, otp))
             {
                 
                 HttpSession session1 = request.getSession();
                session1.setAttribute("user",email);
                 RequestDispatcher rs = request.getRequestDispatcher("U_Update_User_Password.jsp");
                 rs.forward(request, response);
                
              }
              else
              {
                 String msg = "fail"; 
                 HttpSession session2 = request.getSession();
                 session2.setAttribute("message",msg);
                 RequestDispatcher rs = request.getRequestDispatcher("U_Enter_OTP.jsp");
                 rs.include(request, response);
              }
            
            }   
         }   