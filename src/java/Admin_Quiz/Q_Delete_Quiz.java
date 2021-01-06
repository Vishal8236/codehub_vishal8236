/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin_Quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
public class Q_Delete_Quiz extends HttpServlet {

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
        String Question = request.getParameter("ques");
        HttpSession session = request.getSession();
        String language = (String) session.getAttribute("languageSelect");
        
        String table = (String) session.getAttribute("table2");
         try  {
           Class.forName("com.mysql.jdbc.Driver");
                
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz1","root","1234");
           PreparedStatement ps=con.prepareStatement("delete from "+table+" where question='"+Question+"'");

           ps.executeUpdate();
           RequestDispatcher rd=request.getRequestDispatcher("Q_"+language+".jsp");  
           rd.forward(request, response);
        }
          catch( ClassNotFoundException e)
         {
            RequestDispatcher rd=request.getRequestDispatcher("Q_show_quiz.jsp");  
            rd.forward(request, response); 
            out.println("class not found exception");
         }
         catch(SQLException e)
         {
             RequestDispatcher rd=request.getRequestDispatcher("Q_show_quiz.jsp");  
             rd.forward(request, response);
             out.println("sql exception");
         }    
        }
    }

   