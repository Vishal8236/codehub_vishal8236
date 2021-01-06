package Admin_site;


import user_site_page.*;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ABC
 */
public class AdminValidate 
{
    public static boolean validateUser(String id , String pass)
    {
      
        boolean status = false;
        
        try
         {
            Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root","1234");
            
            String query = "select id and pass from checkuser where id=? and pass=?";
            PreparedStatement pt = con.prepareStatement(query);
           
            pt.setString(1, id);
            pt.setString(2, pass);
             
            ResultSet rs=pt.executeQuery();  
            status = rs.next();
         }
              catch( ClassNotFoundException e)
         {
             System.out.println("class not found exception");
         }
         catch(SQLException e)
         {
              System.out.println("sql exception");
         }   
        return status;   
    }    
}
