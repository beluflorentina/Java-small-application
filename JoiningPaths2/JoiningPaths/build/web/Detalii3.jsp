<%-- 
    Document   : Detalii_Traseu_Bucuresti-Cluj-Napoca
    Created on : May 2, 2023, 3:44:36 PM
    Author     : marin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link rel="icon" href="images/logononame.jpg" type="image/x-icon"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Route Details</title>
        <link rel="stylesheet" href="Details.css">
    </head>
    <body>
        
        <%@ include file="Template.html" %>
   
    <div class="text">    
       
    <form method="post" action="Detalii3.jsp">
        
        <input type="hidden" name="serviciu" value="getModel">
        
        <button type="submit">Show/Hide Details</button>
    
    </form>
    
    </div>
    
<% int nr_pag = 2;
   Boolean showDetails = (Boolean)session.getAttribute("showDetails"); //Folosim sintaxa asta deoarece vrem ca atributul sa persiste dupa fiecare apasare a butonului
   if (showDetails == null) {
       showDetails = false; //daca nu exista o varibila showdetails deja se va converti valoare ei in FALSE
   }
%>

<jsp:useBean scope="session" id="model" class="model.Model" />

<%
try {
    if ((request.getParameter("serviciu").equals("getModel"))) {
        showDetails = !showDetails; // toggle the value of showDetails
        session.setAttribute("showDetails", showDetails);
    } else if ((request.getParameter("serviciu").equals("setModel"))) {
        String modificare = request.getParameter("modificare");
        model.setModel(nr_pag, modificare);
        out.println("<b>Modificare ceruta:</b> <br>" + model.getModel(nr_pag));
    }
} catch (NumberFormatException ex) {}
%>

<% if (showDetails) { %>
    <div class="details"><%= model.getModel(nr_pag) %></div>
<% } %>