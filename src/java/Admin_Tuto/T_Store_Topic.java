package Admin_Tuto;


import Admin_Tuto.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Akshay Patidar
 */
@MultipartConfig(maxFileSize = 16177216)

@WebServlet(name = "T_Store_Topic", urlPatterns = {"/T_Store_Topic"})
public class T_Store_Topic extends HttpServlet {

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
            String NewTopic=request.getParameter("topicEnter");
            HttpSession session1 = request.getSession();
            
            String quiztopic =(String) session1.getAttribute("Fquery");
             String lang3 = (String) session1.getAttribute("selectLanguage1");
             
            // String quiztopic = "quiztopic"+lang3;
            try
            {
              

Class.forName("com.mysql.jdbc.Driver");
                
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tutorial1","root","1234");

PreparedStatement ps=con.prepareStatement("insert into "+quiztopic+" values(?)");

ps.setString(1,NewTopic);

ps.executeUpdate();


                
         
               
RequestDispatcher rd=request.getRequestDispatcher("T_"+lang3+".jsp");  
rd.forward(request, response);

                
            }
         catch(ClassNotFoundException e)
         {
            RequestDispatcher rd=request.getRequestDispatcher("T_"+lang3+".jsp");  
            rd.forward(request, response); 
            out.println("class not found exception");
         }
         catch(SQLException e)
         {
            RequestDispatcher rd=request.getRequestDispatcher("T_"+lang3+".jsp");  
            rd.forward(request, response);
            out.println("sql exception in topic store");
         }  
        }
    }
