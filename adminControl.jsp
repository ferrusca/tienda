<%-- 
    Document   : gerenteControl
    Created on : 28/10/2016, 07:30:55 PM
    Author     : chicoterry
--%>
<%
  int cadena = Integer.parseInt(request.getParameter("eleccion"));
  //int eleccion = Integer.parseInt(cadena);
  if (cadena == 0) {
    response.sendRedirect("gerente.jsp");
  }
  if (cadena == 1) {
    response.sendRedirect("borrarUsuario.jsp");
  }
  if (cadena == 2) {
    response.sendRedirect("actualizarUsuario.jsp");
  }
%>

