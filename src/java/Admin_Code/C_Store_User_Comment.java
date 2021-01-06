/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin_Code;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.io.PrintWriter;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
public class C_Store_User_Comment extends HttpServlet {

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
        String name = request.getParameter("name");
        String reponame1 = request.getParameter("repo");
        String email = request.getParameter("email");
        String usercomment = request.getParameter("quesbox");
            try
            {
                SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
                Calendar cal = Calendar.getInstance();
                String dt = formatter.format(cal.getTime());
                Class.forName("com.mysql.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root","1234");

                PreparedStatement ps=con.prepareStatement("insert into comment(dt,repo,name,email,comment) values(?,?,?,?,?)");
                   
                ps.setString(1,dt);
                ps.setString(2,reponame1);
                ps.setString(3,name);
                ps.setString(4,email);
                ps.setString(5,usercomment);
                
                ps.executeUpdate();


                RequestDispatcher rd=request.getRequestDispatcher("U_Admin_Code_Show_Files_Repository.jsp?reponame="+reponame1);  
                rd.forward(request, response);  
            }
         catch(ClassNotFoundException e)
         {
            RequestDispatcher rd=request.getRequestDispatcher("C_Show_Files_Repository.jsp");  
            rd.forward(request, response); 
         }
         catch(SQLException e)
         {
             RequestDispatcher rd=request.getRequestDispatcher("U_Admin_Code_Show_Files_Repository.jsp?reponame="+reponame1);  
                rd.forward(request, response);
         }  
    }
}
