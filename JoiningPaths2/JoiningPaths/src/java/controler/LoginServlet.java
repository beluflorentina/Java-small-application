package controler;

import java.sql.Statement;
import java.io.*;
import java.net.*;

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
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private String username1;
    private String password1;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        
        String username1=request.getParameter("userName");
        String password1=request.getParameter("passWord");
        
        HttpSession session = request.getSession();
        
        RequestDispatcher dispatcher = null ;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/joiningpaths?useSSL=false","root","001F123Belu");
            
            PreparedStatement pst = con.prepareStatement("select * from users where uname = ? and upwd = ?");
            
            pst.setString(1, username1);
            pst.setString(2, password1);
            
            //Statement stm=(Statement) con.createStatement();
            //ResultSet rs= stm.executeQuery("select * from users where username='"+username1+"' and password='"+password1+"'");
            
            ResultSet rs = pst.executeQuery();
            
            
            if (rs.next()){
          
            dispatcher = request.getRequestDispatcher("Home-Page.jsp");
            
            response.sendRedirect("Home-Page.jsp");
            
            } else {
            dispatcher = request.getRequestDispatcher("index.jsp");
            
            String message = "failed";
            
            response.sendRedirect("index.jsp?statusLogin=" + message);
            }
            

            con.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}