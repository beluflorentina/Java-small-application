package controler;

 


 

import java.io.*;

import java.net.*;

import javax.servlet.*;

import javax.servlet.http.*;

 

public class ServletControler extends HttpServlet {

   

   protected void processRequest(HttpServletRequest request,

            HttpServletResponse response) throws ServletException, IOException {

       // Transformarea obiectului orar in atribut al sesiunii curente pentru

      // salvarea starii lui




 

      RequestDispatcher view;

 

      // Se apasa butonul Details

    if (request.getParameter("serviciu").equals("Details") && request.getParameter("start").equals("44.4268,26.1025") && request.getParameter("end").equals("46.7712,23.6236") ) {
    view = request.getRequestDispatcher("Detalii1.jsp");}   
    else if (request.getParameter("serviciu").equals("Details") && request.getParameter("start").equals("44.4268,26.1025") && request.getParameter("end").equals("45.7489,21.2087") ) {
    view = request.getRequestDispatcher("Detalii2.jsp");}
    else if (request.getParameter("serviciu").equals("Details") && request.getParameter("start").equals("46.7712,23.6236") && request.getParameter("end").equals("45.7489,21.2087") ) {
    view = request.getRequestDispatcher("Detalii3.jsp");}
    else if (request.getParameter("serviciu").equals("Details") && request.getParameter("start").equals("46.7712,23.6236") && request.getParameter("end").equals("44.4268,26.1025") ) {
    view = request.getRequestDispatcher("Detalii1.jsp");}
    else if (request.getParameter("serviciu").equals("Details") && request.getParameter("start").equals("45.7489,21.2087") && request.getParameter("end").equals("44.4268,26.1025") ) {
    view = request.getRequestDispatcher("Detalii2.jsp");}
    else if (request.getParameter("serviciu").equals("Details") && request.getParameter("start").equals("45.7489,21.2087") && request.getParameter("end").equals("46.7712,23.6236") ) {
    view = request.getRequestDispatcher("Detalii3.jsp");}  
    else {
    view = request.getRequestDispatcher("TraseuInexistent.jsp");
    } 
      
 

      view.forward(request, response);

   }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)

           throws ServletException, IOException {

      processRequest(request, response);

   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response)

           throws ServletException, IOException {

      processRequest(request, response);

   }

}