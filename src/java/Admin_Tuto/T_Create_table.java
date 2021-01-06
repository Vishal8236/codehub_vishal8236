package Admin_Tuto;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
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
public class T_Create_table extends HttpServlet {

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
     		
        String table1 =(String) session.getAttribute("Fquery");
        String lang3 = (String) session.getAttribute("selectLanguage1");
        String table2 = "tutodetail"+lang3;
        session.setAttribute("Squery",table2);
        //String aa1 = request.getParameter("");
        try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tutorial1","root","1234");
           String query1 = "create table "+table1+" (topicname varchar(100) ,primary key(topicname))"; 
           Statement st = con.createStatement();
           st.executeUpdate(query1);
           
           String query2 = "create table "+table2+" (topicname varchar(100),details longtext , primary key(topicname))";
           Statement st1 = con.createStatement();
           st1.executeUpdate(query2);
           
           session.setAttribute("Squery",table2);
           
           RequestDispatcher rs = request.getRequestDispatcher("T_"+lang3+".jsp");
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





   