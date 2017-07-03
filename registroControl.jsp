<%-- 
    Document   : registroControl.jsp
    Created on : 6/10/2016, 04:31:00 PM
    Author     : chicoterry
--%>

<%@ page import ="java.sql.*"%>
<%
    String username = request.getParameter("username");
    String pwd = request.getParameter("password");
    String apellido = request.getParameter("apellido");
    String nombre = request.getParameter("nombre");
    String telefono = request.getParameter("telefono");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prebefood","root","");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into cliente(nombre,apellido,username,password,telefono) values ('" + nombre + "','" + apellido + "','" + username + "','" + pwd + "','" + telefono + "');");
    
    if(i > 0){
    out.write("Usuario añadido correctmente, regrese al <a href='index.jsp'>menu principal</a> para iniciar sesión"); 
    } else{
      response.sendRedirect("index.jsp");
    }
%>
