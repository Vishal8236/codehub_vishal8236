/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin_Quiz;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Akshay Patidar
 */
@MultipartConfig(maxFileSize = 16177216)
@WebServlet(name = "Store_Languages_Quiz", urlPatterns = {"/Store_Languages_Quiz"})
public class Store_Languages_Quiz extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
           String NewLanguage=request.getParameter("languageEnter");
           Part part = request.getPart("languageLogo"); 

            try
            {
              

Class.forName("com.mysql.jdbc.Driver");
                
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz1","root","1234");

PreparedStatement ps=con.prepareStatement("insert into quizlanguage values(?,?)");

ps.setString(1,NewLanguage);
InputStream is = part.getInputStream();
ps.setBlob(2, is);
ps.executeUpdate();
               

RequestDispatcher rd=request.getRequestDispatcher("Q_Copy_Content?languagen="+NewLanguage);  
rd.forward(request, response);

                
            }
         catch(ClassNotFoundException e)
         {
            RequestDispatcher rd=request.getRequestDispatcher("Q_Select_Language_Quiz.jsp");  
            rd.forward(request, response); 
         }
         catch(SQLException e)
         {
             RequestDispatcher rd=request.getRequestDispatcher("Q_Select_Language_Quiz.jsp");  
             rd.forward(request, response);
         }  
        }
    }