/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user_site_page;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
public class Rename_User_Repository extends HttpServlet {

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
        HttpSession session = request.getSession();
        String oldId = (String) session.getAttribute("user");
        String newId = request.getParameter("newID");
        File sourcefile = new File("D:\\my project codehub\\abc\\web\\User Code Repository\\"+oldId+"");
        File destfile = new File("D:\\my project codehub\\abc\\web\\User Code Repository\\"+newId+"");
        
        sourcefile.renameTo(destfile);
        
         RequestDispatcher rd=request.getRequestDispatcher("U_User_login.jsp?msg=null");  
         rd.forward(request, response);
    }       
}
