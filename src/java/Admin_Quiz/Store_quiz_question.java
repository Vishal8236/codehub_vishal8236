package Admin_Quiz;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Akshay Patidar
 */
@WebServlet(urlPatterns = {"/Store_quiz_question"})
public class Store_quiz_question extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        
 String topicn1=request.getParameter("topicN");   
 String ques1=request.getParameter("ques");
 String option11 = request.getParameter("op1");
 String option22 = request.getParameter("op2");
 String option33 = request.getParameter("op3");
 String option44 = request.getParameter("op4");
 String ans1 = request.getParameter("ans");
 
 
 //String questionInsert =(String) session.getAttribute("aaa2");
 String lang3 = (String) session.getAttribute("languageSelect");
 String aaa = "quizques"+lang3;
 
 try
            {
              

Class.forName("com.mysql.jdbc.Driver");
                
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz1","root","1234");

PreparedStatement ps=con.prepareStatement("insert into "+aaa+" values(?,?,?,?,?,?,?)");


ps.setString(1,ques1);
ps.setString(2,option11);
ps.setString(3,option22);
ps.setString(4,option33);
ps.setString(5,option44);
ps.setString(6,ans1);
ps.setString(7,topicn1);
        
ps.executeUpdate();
               
RequestDispatcher rd=request.getRequestDispatcher("Q_"+lang3+".jsp");  
rd.forward(request, response);

                
            }
         catch(ClassNotFoundException e)
         {
            out.println("class not found exception");
         }
         catch(SQLException e)
         {
             out.println("sql exception in store Question");
         }
    }
 }
