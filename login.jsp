<%-- 
    Document   : login.jsp
    Created on : 6/10/2016, 03:33:04 PM
    Author     : chicoterry
--%>

<%-- administra la informacion enviada mediante post --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>
<%
    String username = request.getParameter("nameuser");
    String pwd = request.getParameter("pass");
    //para poder conectarse a una base de datos es necesario cargar el driver de esta func
    Class.forName("com.mysql.jdbc.Driver");
    //El objeto de Tipo connection nos permnitira administrar la conexion
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prebefood", "root","");
    //STATEMENT es el objeto encargado de enviar las sentencias SQL al driver
    Statement st = con.createStatement();
    ResultSet rs,rg;
    
    rs = st.executeQuery("select * FROM cliente WHERE username='"+username+"' and password='"+pwd+"';");
    if (rs.next()){
        session.setAttribute("username", username); //se le agrega un ID a la sesion llamado username
        response.sendRedirect("logueoExitoso.jsp");
        
    } 
    else{
        rg = st.executeQuery("select * FROM gerentes WHERE username='"+username+"'and password='"+pwd+"';");    
            if(rg.next()){
                session.setAttribute("username",username);
                response.sendRedirect("gerente.jsp");
            } else { %>
                <h4>Usuario incorrecto papá, <a href='index.jsp'> prueba de nuevo</a></h4> <!--redirecciona a index.jsp -->
            <%}
    }
        
        
%>
    
