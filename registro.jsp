<%-- 
    Document   : registro.jsp
    Created on : 6/10/2016, 04:24:47 PM
    Author     : chicoterry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de clientes</title>
    </head>
    <body style="background: rgb(88, 244, 142)">
      <h1>Registro</h1>  
      <form method="POST" action="registroControl.jsp"> 
            <center> 
                Nombre: 
                <input type="text" name="nombre"/>  <%-- agrega informacion en el formulario --%>
                Apellido:
                <input type="text" name="apellido"/>
                Username: 
                <input type="text" name="username"/>  <%-- agrega informacion en el formulario --%>
                Password:
                <input type="password" name="password"/>
                Telefono:
                <input type="telefono" name="telefono"/>
                <input type="submit" value="Registrarse"/>
            </center>
        </form> <%-- peticion de tipo post(en background)--%>
    </body>
</html>
