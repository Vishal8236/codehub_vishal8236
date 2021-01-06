/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminEbook;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Akshay Patidar
 */
public class Delete_Ebook extends HttpServlet {

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
        String Bookname = request.getParameter("Bookn");
        
        try
        {
            
           File f = new File("D:\\my project codehub\\abc\\web\\Ebooks\\"+Bookname+".txt");
           f.delete();
           
           RequestDispatcher rd=request.getRequestDispatcher("Delete_Ebook_Database_Info?book="+Bookname);  
           rd.forward(request, response);
        }
        catch(Exception e)
        {
          out.println("Some erorrs");
        }
    }
}