/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UserCode;

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
public class U_C_Store_New_Repository extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String user_id = (String) session.getAttribute("user");
        String language = (String) session.getAttribute("languagename");
        String Rname = request.getParameter("repo");
        String path = "D:\\my project codehub\\abc\\web\\User Code Repository\\"+user_id+"\\"+language+"\\"+Rname+" ";
        File f  =  new File(path);
        f.mkdir();
        //response.sendRedirect("U_C_Select_Repository.jsp");
        RequestDispatcher rd=request.getRequestDispatcher("U_C_Select_Repository.jsp?languageEnter="+language);  
        rd.forward(request, response);
            
    }
 }
