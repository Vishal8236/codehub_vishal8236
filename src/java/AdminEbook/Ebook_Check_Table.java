package AdminEbook;





import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import java.sql.*;
import javax.servlet.http.HttpSession;

public class Ebook_Check_Table extends HttpServlet {

  
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           
         String lang2 = request.getParameter("languageEnter");
         response.setContentType("text/html");
         PrintWriter out = response.getWriter();
try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook1","root","1234");
            
           
            String query1 = "ebook"+lang2;
            DatabaseMetaData dbm = con.getMetaData();
            
            ResultSet rs1 = dbm.getTables(null, null, query1, null);
          
             if(rs1.next())
             {
                 HttpSession session = request.getSession();
                 session.setAttribute("table1",query1);
                 session.setAttribute("languageSelect", lang2); 
                 RequestDispatcher rs = request.getRequestDispatcher("E_"+lang2+".jsp");
                  rs.forward(request, response);
              }
              else
              {
                 HttpSession session = request.getSession();
                 session.setAttribute("table1",query1);
                 session.setAttribute("languageSelect", lang2);
                 RequestDispatcher rs = request.getRequestDispatcher("createtableebook");
                 rs.forward(request, response);
              }
         }   
       catch( ClassNotFoundException e)
         {
             System.out.println("class not found exception");
         }
         catch(SQLException e)
         {
              System.out.println("sql exception");
         } 
    } 
    }


