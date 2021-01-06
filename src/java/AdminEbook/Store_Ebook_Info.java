/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminEbook;


import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;
import javax.servlet.RequestDispatcher;
import java.io.InputStream;
 
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
 
@MultipartConfig(maxFileSize = 16177216)

public class Store_Ebook_Info extends HttpServlet {
   

   
   
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
       java.io.PrintWriter out = response.getWriter();
       try{
           String NewLanguage=request.getParameter("langN");
           String BookName = request.getParameter("bookN");
           String PageN = request.getParameter("pagen");
           Part part = request.getPart("ebooklogo"); 
           //long PageN1 = Long.parseLong(PageN);
           
            HttpSession session = request.getSession();
            
            String query1 = (String) session.getAttribute("table1"); 
           Class.forName("com.mysql.jdbc.Driver");
                
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook1","root","1234");

           PreparedStatement ps=con.prepareStatement("insert into "+query1+" values(?,?,?,?)");

           ps.setString(1,NewLanguage);
           ps.setString(2, BookName);
           ps.setString(3, PageN);
           InputStream is = part.getInputStream();
           ps.setBlob(4, is);
           ps.executeUpdate();
               
           RequestDispatcher rd=request.getRequestDispatcher("E_Upload_Ebook_PDF.jsp?lang="+NewLanguage);  
           rd.forward(request, response);
         } 
        catch(ClassNotFoundException e)
         {
            //RequestDispatcher rd=request.getRequestDispatcher("E_Select_Language.jsp");  
            //rd.forward(request, response);
            out.println("class not found exception");
         }
         catch(SQLException e)
         {
             //RequestDispatcher rd=request.getRequestDispatcher("E_Select_Language.jsp");  
             //rd.forward(request, response);
             out.println("sql exception");
         }
        
      }
      
     
   }
