/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package controler;

import java.io.*;
import java.net.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Anda
 */
@WebServlet("/ProfileServlet")
@MultipartConfig
public class ProfileServlet extends HttpServlet {
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        //try {
           
          
        //} finally { 
          //  out.close();
        //}
        System.out.println("In servletul profilului");
        
//        Part file=request.getPart("imagine");
//        String imageFileName=file.getSubmittedFileName();
//        System.out.println("Numele imagini selectate: "+imageFileName);
    } 
}