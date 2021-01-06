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
public class U_Create_Language_Folder extends HttpServlet {

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
        String languagename = request.getParameter("lang");
        String user_id = (String) session.getAttribute("user");
        String path = "D:\\my project codehub\\abc\\web\\User Code Repository\\"+user_id+"\\"+languagename+" ";
        File f  =  new File(path);
        f.mkdir();
        RequestDispatcher rd=request.getRequestDispatcher("U_C_Select_Language.jsp");  
        rd.forward(request, response);

    }    
}

  