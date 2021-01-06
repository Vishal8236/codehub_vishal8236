package Admin_Tuto;





import Admin_Tuto.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import java.sql.*;
import javax.servlet.http.HttpSession;

public class T_Check_table_in_database extends HttpServlet {

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
           
         String selectLanguage = request.getParameter("language");
         response.setContentType("text/html");
         PrintWriter out = response.getWriter();
try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tutorial1","root","1234");
            
           
            String query1 = "tutotopic"+selectLanguage;
            String query2 = "tutodetail"+selectLanguage;
            DatabaseMetaData dbm = con.getMetaData();
            
            ResultSet rs1 = dbm.getTables(null, null, query1, null);
          
             if(rs1.next())
             {
                 HttpSession session = request.getSession();
                 session.setAttribute("Fquery",query1);
                 session.setAttribute("Squery",query2);
                 session.setAttribute("selectLanguage1", selectLanguage); 
                 RequestDispatcher rs = request.getRequestDispatcher("T_"+selectLanguage+".jsp");
                  rs.forward(request, response);
              }
              else
              {
                 HttpSession session = request.getSession();
                 session.setAttribute("Fquery",query1);
                 session.setAttribute("selectLanguage1", selectLanguage);
                  RequestDispatcher rs = request.getRequestDispatcher("tutocreatetable");
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


