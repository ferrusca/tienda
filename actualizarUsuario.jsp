<%-- 
    Document   : actualizarUsuario
    Created on : 25/01/2017, 08:53:17 AM
    Author     : chicoterry
--%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Actualizar usuario</title>
  </head>
  <body style="text-align:center; background: rgb(244, 155, 87)"> 
    <h1>Actualizar usuario</h1> 
    <h2>Introduzca el nombre del usuario a modificar</h2><br>
    <form method="post" action="actualizarUsuario.jsp">            
      Nombre usuario: 
      <input type="text" name="username"/>  <br><br>                               
      <input type="submit" value="Modificar"/>
    </form>     
    <%Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prebefood", "root","");
      Statement st = con.createStatement();
      ResultSet rs;
      if(request.getParameter("username") != null){ 
      String username = request.getParameter("username");

      rs = st.executeQuery("SELECT * FROM cliente WHERE username = '"+username+"';");
      if (rs.next()){ %>
      <h2>Introduzca datos a actualizar</h2>
      <form method="post" action="actualizarUsuario.jsp">            
        Nombre:
        <input type="text" name="nombre"/>  <%-- agrega informacion en el formulario --%>                               
        Contraseña:
        <input type="text" name="password"/>
        <input type="hidden" name="username" value="<%=username%>">
        <input type="submit" value="Actualizar"/>
      </form>
    <%} }
      if(request.getParameter("nombre") != null){ 
      String nombre =  request.getParameter("nombre");
      String password = request.getParameter("password");
      String username = request.getParameter("username");
      int up = st.executeUpdate("UPDATE cliente SET nombre='"+nombre+"', password = '"+ password +"' WHERE username = '"+username+"';");
      if(up > 0)
        out.write("<br>Se actualizó correctamente el usuario: "+username);
      else
         out.write("Hubo un error al intentar actualizar el usuario "+username);
      } 
    %>     
  </body>
</html>
