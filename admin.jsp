<%-- 
    Document   : gerente
    Created on : 25/10/2016, 02:57:25 PM
    Author     : chicoterry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Index de admin</title>
  </head>
  <body style="background: rgb(216, 252, 118); text-align: center">
    <h3>Selecciona una opcion:</h3>
    <form method="POST" action='adminControl.jsp'>
      <select name="eleccion">
        <option value='0'></option>
        <option value='1'>Eliminar Usuario</option>
        <option value='2'>Actualizar usuario</option>
      </select>
      <input type ='submit'/>
    </form>
  </body>
</html>


