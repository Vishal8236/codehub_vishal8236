/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UserCode;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Akshay Patidar
 */
public class U_C_Delete_Repository_File extends HttpServlet {

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
        //select user
        String user_id = (String) session.getAttribute("user");
        
        //select language
        String language =(String) session.getAttribute("languagename");

        //select repository
        String repo = (String) session.getAttribute("selectrepo");
        
        //get file
        String file = request.getParameter("fileN");
        File f = new File("D:\\my project codehub\\abc\\web\\User Code Repository\\"+user_id+"\\"+language+"\\"+repo+"\\"+file+"");
        f.delete();
        
        request.getRequestDispatcher("U_C_Show_Files_Repository.jsp?reponame="+repo).forward(request, response);
    }        
}
