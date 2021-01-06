/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin_site;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Akshay Patidar
 */
@WebServlet(name = "AdminLogout", urlPatterns = {"/AdminLogout"})
public class AdminLogout extends HttpServlet {

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
           
         RequestDispatcher rs = request.getRequestDispatcher("Admin_login.jsp");
        rs.include(request, response);
        
        HttpSession session = request.getSession();
        session.invalidate();
        
        out.println("<h3>you are successfull logout</h3>");
    }
    
}

  