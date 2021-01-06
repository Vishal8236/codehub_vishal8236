package Admin_site;



import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
        
public class NewUser extends HttpServlet {

   
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String id = request.getParameter("id1");
        String pass = request.getParameter("pass1");
       
        try
        {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","1234");
           
           String query = "insert into checkuser values (?,?)";
           
           PreparedStatement pt = con.prepareStatement(query);
           
           pt.setString(1, id);
           pt.setString(2, pass);
           
           pt.executeUpdate();
           
          // out.println("<h1>data inserted</h1>");
          RequestDispatcher rd=request.getRequestDispatcher("Admin_login.html");  
               rd.forward(request, response); 
        }    
        catch(ClassNotFoundException e)
        {
            out.println("<h1>class not found exception</h1>");
        }
        catch(SQLException e)
        {
            out.println("<h1>sql exception</h1>");
        }
    }
}
