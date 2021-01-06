/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package User_Compiler;

import java.io.FileWriter;
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
public class U_Comp_Create_File extends HttpServlet {

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
         HttpSession session =  request.getSession();
         String classN = request.getParameter("classname");
         String codedata = request.getParameter("codebox"); 
         FileWriter fw = new FileWriter("C:\\Users\\Akshay Patidar\\CodeHub\\web\\compiler file\\"+classN+".jsp");
         fw.write(codedata);
       
         fw.close();
         RequestDispatcher rs = request.getRequestDispatcher("U_Comp_Compiler");
         rs.forward(request, response);         
    }    
}
