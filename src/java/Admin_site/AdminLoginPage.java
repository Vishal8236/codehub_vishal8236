package Admin_site;



import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import java.sql.*;
import javax.servlet.http.HttpSession;

public class AdminLoginPage extends HttpServlet {

  
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           
         String id = request.getParameter("id1");
         String pass = request.getParameter("pass1");
         
         response.setContentType("text/html");
         PrintWriter out = response.getWriter();

                       
          
             if(AdminValidate.validateUser(id, pass))
             {
                 HttpSession session = request.getSession();
                 session.setAttribute("user",id);
                 RequestDispatcher rs = request.getRequestDispatcher("Admin_home.jsp");
                 rs.forward(request, response);
                
              }
              else
              {
                 out.println("<h1>Username or Password incorrect</h1>");
                 RequestDispatcher rs = request.getRequestDispatcher("Admin_login.jsp");
                 rs.include(request, response);
              }
            /*while(rs.next())
            {
                String a = rs.getString(1);
                String b = rs.getString(2);
            }             
            if(a==id&&b==pass)
            {
                 out.println("<h1>you are UserValidate user</h1>");
            }
            else
            {
                
            }   */
          // pt.executeQuery();
            
           
         }    
       
    }


