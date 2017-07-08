<%@page import="dao.UsuarioDao"%>
<%@page import="dao.ClienteDao"%>
<%@page import="model.Usuario"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Underline Courses</title>
    </head>
    <body>
        <%
           
           //Verifica as sessões para saber se a pessoa logou
           if(session.getAttribute("msg").equals("Logou") && session.getAttribute("id") != null){
               
           }

           else
        %>
        <c:redirect url="../index.jsp"></c:redirect>
        
    </body>
</html>
