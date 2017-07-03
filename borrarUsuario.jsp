<%-- 
    Document   : gestionmesero
    Created on : 28/10/2016, 10:02:10 PM
    Author     : chicoterry
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>

<%
  Class.forName("com.mysql.jdbc.Driver");
  String username = request.getParameter("username");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prebefood", "root", "");
  Statement st = con.createStatement();
%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Borrar Usuario</title>
    <style>
      *{
        color: #f1f1f1;
        text-align: center;
      }
      input{
        color: #000;
      }
    </style>
  </head>
  <body style="background: rgb(255, 28, 28)">
    <h1>Eliminar usuario</h1> 
    <h2>Introduzca el username del registro a eliminar: </h2><br>
    <form method="post" action="borrarUsuario.jsp">            
      Nombre usuario: 
      <input type="text" name="username"/>  <br><br>                               
      <input type="submit" value="Eliminar!"/>
    </form> 
    <%
      if(request.getParameter("username") != null){ 
        int rs;
        rs = st.executeUpdate("DELETE FROM cliente WHERE username = '" + username + "';");
        if (rs > 0) {
          out.write("El usuario " + username + " se ha borrado con éxito");
        } else {
          out.write("No se ha podido borrar el usuario " + username + ", verifique.");
        }
      }
    %>
  </body>
</html>
