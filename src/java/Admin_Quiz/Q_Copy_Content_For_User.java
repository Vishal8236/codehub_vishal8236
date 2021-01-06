/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin_Quiz;

import java.io.BufferedReader;
import java.io.FileReader;
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
public class Q_Copy_Content_For_User extends HttpServlet {

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
        HttpSession session =  request.getSession();
        String fname = request.getParameter("languagen"); 
         FileReader fr = new FileReader("D:\\my project codehub\\abc\\web\\data_user_quiz_language.txt");
         BufferedReader br = new BufferedReader(fr);
         FileWriter fw = new FileWriter("D:\\my project codehub\\abc\\web\\U_Q_"+fname+".jsp");
         String s;
         while((s = br.readLine())!= null)
         {
           fw.write(s);
           fw.flush();
         }
         br.close();
         fw.close();
         RequestDispatcher rs = request.getRequestDispatcher("Q_Select_Language_Quiz.jsp");
         rs.forward(request, response);
        }
    }
