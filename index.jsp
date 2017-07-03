<%@page contentType="text/html" pageEncoding="UTF-8"%> <!--probando gitsssa-->
<!DOCTYPE html> <!--mas <pruebas-->
<html>
  <head>
    <title>Entrada</title>
    <style>
      form{
        padding-top: 5%; 
      }
      
      ul{
        padding-left: 0px;
      }
      /*li:hover a{  /*Cuando pases el puntero por el link de una  lista*/
      /*		background: #ccc;
                    color: #000;
      }*/
    </style>
  </head>
  <body style="background-color: rgb(159, 96, 255)">
  <center>
    <h1>Bienvenido!</h1>
    <form action="login.jsp" method="POST">
      <input type="text" name="nameuser" placeholder="Usuario" /> <br><br>
      <input type="password" name="pass" placeholder="Contraseña" /> <br><br>
      <input style="text-align: center; background: rgba(255,255,255,0.3); border-radius: 10px" type="submit" value="Iniciar sesión"/> 
    </form>
    <br>
    <ul style="list-style:none;">
      <li><a href="logueoExitoso.jsp">Tienda</a></li>
      <li><a href="registro.jsp" style="font-family: 'Lobster', cursive">Registrarse</a></li>
      <li><a href="admin.jsp" style=" font-family: 'Lobster', cursive">Admin</a></li>
    </ul>
  </form>
</center>
</body>
</html>
