/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Send_OTP_TO_Email;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Akshay Patidar
 */
public class Send_Mail_To_User_With_Opt extends HttpServlet {

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
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session1 = request.getSession();
        String email = (String) session1.getAttribute("userID_otp");
        String OTP = request.getParameter("otp");
        session1.setAttribute("otp", OTP);
        String to=email;//change accordingly
            //Get the session object
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "465");
            Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication("vpboss9691@gmail.com","8236879994");//Put your email id and password here
            }
            });
            //compose message
            try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("vpboss9691@gmail.com"));//change accordingly
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
            message.setSubject("Hello");
            message.setText("your otp is - "+OTP);
            //send message
            Transport.send(message);
           
            } catch (MessagingException e) {throw new RuntimeException(e);}
             RequestDispatcher rs = request.getRequestDispatcher("Store_OTP");
            rs.forward(request, response);
            }
        }
    
