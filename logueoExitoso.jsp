<%-- 
    Document   : logueoExitoso.jsp
    Created on : 6/10/2016, 04:21:39 PM
    Author     : chicoterry
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<% HttpSession sesion = request.getSession();
String nombre = (String)session.getAttribute("username");
  if(nombre == null){ 
    response.sendRedirect("index.jsp");
  } else{ 
 %>
<!DOCTYPE html>
<html>
    <head>
      <style>
        table, th,td {
          border: 1px solid black; /*borde de la tabla */
          border-collapse: collapse; } /* se juntan las lineas con none */
        body{
          background-color: #f1f1f1;
        }
        img{
          width: 90px;
          height: 100px;
        }
      </style>
      <script>
        var total = 0; 
        var contador=0;
        function incrementar()
        {
        contador++;
        alert("Llevas " + contador + " articulos");
        }
      </script>
      <title>Usuario</title>
    </head>
    <body>
      <h3> <% out.write("Bienvenido, "+nombre); %> </h3> 
    <center>
      <table>
        <tr>
          <th>Nombre</th>
          <th>Precio</th>
          <th>Descripcion</th>
        </tr>
        <tr>
          <td><a href="#" onClick="incrementar(); total+=12;">Donas</a></td>
          <td>12.00</td>
          <td><img src="img/donas.jpg"></img></td>
        </tr>
        <tr>
          <td><a href="#" onClick="incrementar(); total+=10.50;">Refresco</a></td>
          <td>10.50</td>
          <td><img src="img/refresco.jpg"></img></td>
        </tr>
        <tr>
          <td><a href="#" onclick="incrementar(); total+=47">Corn Flakes</a></td>
          <td>47.00</td>
          <td><img src="img/cereal.jpg"></img></td>
        </tr>
        <tr>
          <td><a href="#" onClick="incrementar(); total+=30">Cerveza</a></td>
          <td>30.00</td>
          <td><img src="img/cerveza.png"></img></td>
        </tr>
        <tr>
          <td><a href="#" onClick="incrementar(); total+=9.50">Galletas</a></td>
          <td>9.50</td>
          <td><img src="img/galletas.jpg"></img></td>
        </tr>
      </table>
    </center> 
    <!--<form   id="formulario" method="POST" action="total.jsp" >
       <input type="hidden" id ="parametro1" value="javaScript:total">
    <input type="submit" value="BORRAR"/> -->
    <a href="#" onClick="javaScript:alert('El total es de '+total);">Mostrar total</a>
    <a href="salir.jsp">S a l i r!</a>
    <!--<form action="salir.jsp" method="get">-->
    <p id="aid" > </p>
      <input type="submit" value="mandar" onclick="document.getElementById('aid').innerHTML = total">
    <!--</form>-->
    
    </body>
</html>
<% } %>