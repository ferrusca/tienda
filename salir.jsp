<%-- 
    Document   : salir
    Created on : 29/10/2016, 07:46:49 AM
    Author     : yo
--%>
<%@ page import ="java.sql.*"%>
<% session.invalidate(); 
   //String total = request.getParameter("pago");
   //out.write(total);
   response.sendRedirect("index.jsp"); 
%>

