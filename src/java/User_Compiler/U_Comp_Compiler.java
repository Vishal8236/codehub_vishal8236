/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package User_Compiler;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Akshay Patidar
 */
public class U_Comp_Compiler extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            
        Runtime rt = Runtime.getRuntime();
        String commands = "javac -cp .:lib.jar C:\\notes\\DoWhile.java";
        Process proc = rt.exec(commands);

        BufferedReader stdInput = new BufferedReader(new 
             InputStreamReader(proc.getInputStream()));

        BufferedReader stdError = new BufferedReader(new 
             InputStreamReader(proc.getErrorStream()));

        // Read the output from the command
        System.out.println("Here is the standard output of the command:\n");
        if(stdInput!=null)
        {    
            String s = null;
            while ((s = stdInput.readLine()) != null) {
                System.out.println(s);
            }
        }
        else if(stdError!=null)
        {    
            // Read any errors from the attempted command
            System.out.println("Here is the standard error of the command (if any):\n");
            String s1 = null;
            while ((s1 = stdError.readLine()) != null) {
                System.out.println(s1);
            }
        }
        else
        {
          
        }
    }
}

