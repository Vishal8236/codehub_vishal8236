package AdminEbook;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
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
public class Ebook_Create_Table extends HttpServlet {

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
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession();
     		
        String query1 =(String) session.getAttribute("table1");
        String lang3 = (String) session.getAttribute("languageSelect");
            
        //String aa1 = request.getParameter("");
        try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook1","root","1234");
           String query11 = "create table "+query1+" (langname varchar(100),bookname varchar(100),pages varchar(20),bookimg longblob)"; 
           Statement st = con.createStatement();
           st.executeUpdate(query11);
                    
           RequestDispatcher rs = request.getRequestDispatcher("E_"+lang3+".jsp");
           rs.forward(request, response);
           
         }   
         catch( ClassNotFoundException e)
         {
             out.println("class not found exception in fist table");
         }
         catch(SQLException e)
         {
              out.println("sql exception in fist table");
         } 
    } 
 }





   