package Admin_site;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.MultipartConfig;
/**
 *
 * @author ABC
 */
@MultipartConfig(maxFileSize = 16177216)

public class Admin_LanguageStore extends HttpServlet {

    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            //String selectLanguage = request.getParameter("languageSe");
            String selectLanguage = request.getParameter("languageSe");
            Part part = request.getPart("languageLogo");
            try
            {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","1234");
               
               PreparedStatement pt = con.prepareStatement("insert into language values(?,?)");
               
               pt.setString(1, selectLanguage);
               InputStream is = part.getInputStream();
               pt.setBlob(2, is);
               pt.executeUpdate();
               RequestDispatcher rd=request.getRequestDispatcher("Admin_Language");  
               rd.forward(request, response);  
            }
            catch(Exception e)
            {
               
            }
    }
}
