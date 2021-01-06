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
public class Q_Delete_Language extends HttpServlet {

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
        String langname = request.getParameter("languageN");
        
        try  {
           Class.forName("com.mysql.jdbc.Driver");
                
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz1","root","1234");
           PreparedStatement ps=con.prepareStatement("delete from QuizLanguage where languagename='"+langname+"'");

           ps.executeUpdate();
           RequestDispatcher rd=request.getRequestDispatcher("Q_Select_Language_Quiz.jsp");  
           rd.forward(request, response);
        }
          catch( ClassNotFoundException e)
         {
            out.println("class not found exception");
         }
         catch(SQLException e)
         {
              out.println("sql exception");
         }    
    }
}   

    