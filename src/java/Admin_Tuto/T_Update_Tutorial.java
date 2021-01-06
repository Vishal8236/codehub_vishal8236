/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin_Tuto;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
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
public class T_Update_Tutorial extends HttpServlet {

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
        String connectionURL = "jdbc:mysql://localhost:3306/tutorial1";
              String user = "root";
              String pass = "1234";
              String topic2 = request.getParameter("topic");
              Connection con = null;
              PrintWriter out = response.getWriter();
              HttpSession session = request.getSession();
               String lang3 = (String) session.getAttribute("selectLanguage1");
               String tablen = (String) session.getAttribute("Squery");
              // String aaa = "quizques"+lang3;
              String data = request.getParameter("content");
              
              try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
    
                    // PreparedStatement ps = con.prepareStatement("select quizjavatopicques.question , quizjavatopicques.option1 , quizjavatopicques.option2 , quizjavatopicques.option3 , quizjavatopicques.option4 , quizjavatopicques.answer from quizjavatopicques inner join quizjavatopic on quizjavatopicques.topic='"+topic2+"' = quizjavatopic.topicname='"+topic2+"'");
                     
                     PreparedStatement ps = con.prepareStatement("update "+tablen+" set details='"+data+"' where topicname='"+topic2+"'");
                     ps.executeUpdate();
              }
              catch(ClassNotFoundException e)
              {
                 out.print("some error");
              }
              catch(SQLException e)
              {
                 out.print("some sql error ");
              }
              RequestDispatcher rs = request.getRequestDispatcher("T_show_topic_content.jsp?topic1="+topic2);
              rs.forward(request, response);
        }
    }
