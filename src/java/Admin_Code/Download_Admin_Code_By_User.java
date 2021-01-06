/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin_Code;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Akshay Patidar
 */
public class Download_Admin_Code_By_User extends HttpServlet {

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
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
       
        //select language
        String language = (String) session.getAttribute("languagename");
        
        //select repository
        String repo = request.getParameter("repoN");
        
        
        String path = "D:\\my project codehub\\abc\\web\\Code Repository\\"+language+"\\"+repo+"";
        File directory = new File(path);
        String[] files = directory.list();
       
        //check if directories have files
        if (files != null && files.length > 0) {
           
            //create zip stream
            byte[] zip = zipFiles(directory, files);
           
           
            // Sends the response back to the user / browser with zip content
            ServletOutputStream sos = response.getOutputStream();
            response.setContentType("application/zip");
            response.setHeader("Content-Disposition", "attachment; filename=\""+repo+".ZIP\"");
           
            sos.write(zip);
            sos.flush();
        }
       
        //request.setAttribute("DownloadMessage", "Successfully");
        //request.getRequestDispatcher("DownloadZipFile.jsp").forward(request, response);
       
    }
   
    private byte[] zipFiles(File directory, String[] files) throws IOException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ZipOutputStream zos = new ZipOutputStream(baos);
        byte bytes[] = new byte[4096];
       
        for (String fileName : files) {
            try (FileInputStream fis = new FileInputStream(directory.getPath()
                    + "/" + fileName);
                   
                    BufferedInputStream bis = new BufferedInputStream(fis)) {
               
                zos.putNextEntry(new ZipEntry(fileName));
               
                int bytesRead;
                while ((bytesRead = bis.read(bytes)) != -1) {
                    zos.write(bytes, 0, bytesRead);
                }
                zos.closeEntry();
            }
        }
        zos.flush();
        baos.flush();
        zos.close();
        baos.close();
       
        return baos.toByteArray();
    }
   
}
