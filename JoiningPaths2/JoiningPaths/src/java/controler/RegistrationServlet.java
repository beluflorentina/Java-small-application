package controler;

import java.sql.SQLException;
import java.sql.Statement;
import java.io.*;
import java.net.*;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.WebServlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.ResultSet;

/**
 *
 * Servlet implementation class LoginServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
   

    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    response.setContentType("text/html");
    
    String uname = request.getParameter("username");
    String upwd = request.getParameter("password");
    String uemail = request.getParameter("email");
    String umobile = request.getParameter("phone");
    String utype = request.getParameter("utype");
    
    RequestDispatcher dispatcher = null;
    
    Connection con = null;
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/joiningpaths?useSSL=false","root","001F123Belu");
        
        
        PreparedStatement pstCheck = con.prepareStatement("SELECT * FROM users WHERE uname = ? OR uemail = ? OR umobile = ?");
        pstCheck.setString(1, uname);
        pstCheck.setString(2, uemail);
        pstCheck.setString(3, umobile);
        ResultSet rs = pstCheck.executeQuery();
        
        if (rs.next()) { 
            request.setAttribute("status","failed");
            dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request,response);
        } else { 
            PreparedStatement pst = con.prepareStatement("INSERT INTO users(uname,upwd,uemail,umobile,utype) VALUES(?,?,?,?,?)");
            pst.setString(1, uname);
            pst.setString(2, upwd);
            pst.setString(3, uemail);
            pst.setString(4, umobile);
            pst.setString(5, utype);
            
            int rowCount = pst.executeUpdate();
            
            dispatcher = request.getRequestDispatcher("index.jsp");
            
            if (rowCount > 0 ){
                request.setAttribute("status","success");
            } else {
                request.setAttribute("status","failed");
            }
            
            dispatcher.forward(request,response);
        }
        
    } catch (Exception e) {
        e.printStackTrace();
    }
    finally{
        try {
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    }
}