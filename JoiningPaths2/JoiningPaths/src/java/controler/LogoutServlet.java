package controler;

import java.io.*;
import java.net.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.*;
import javax.servlet.http.*;
//import javax.servlet.*;
//import javax.servlet.http.*;
/**
 *
 * @author Anda
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    HttpSession session = request.getSession();
    session.invalidate();
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setHeader("Expires", "0"); // Proxies.
    response.sendRedirect("redirectionarelogout.jsp");
}

  
}