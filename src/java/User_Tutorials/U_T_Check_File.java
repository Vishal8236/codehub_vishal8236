/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package User_Tutorials;

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
public class U_T_Check_File extends HttpServlet {

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
        String language = request.getParameter("language");
        String query1 = "tutotopic"+language;
        String query2 = "tutodetail"+language;
        String filen = "U_T_"+language+".jsp";
        File temdir = new File("D:\\my project codehub\\abc\\web\\"+filen);
        boolean exists = temdir.exists();
        String check = String.valueOf(exists);
        if(check=="true")
        {
                 HttpSession session = request.getSession();
                 session.setAttribute("Fquery",query1);
                 session.setAttribute("Squery",query2);
                 session.setAttribute("selectLanguage1", language); 
                 RequestDispatcher rs = request.getRequestDispatcher("U_T_"+language+".jsp");
                rs.forward(request, response);
        }
        else
        {
                HttpSession session = request.getSession();
                session.setAttribute("table1",query1);
                session.setAttribute("languageSelect", language); 
                //RequestDispatcher rs = request.getRequestDispatcher("U_E_Copy_Content?language="+language);
                //rs.forward(request, response);
        }
        }
}
