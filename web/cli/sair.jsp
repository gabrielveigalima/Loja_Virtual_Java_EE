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
             HttpSession sessao = request.getSession();
                      session.setAttribute("msg", " ");
                        
                        session.setAttribute("user", " ");
       
        %>
        <c:redirect url="../index.jsp"></c:redirect>
        
        
    </body>
</html>
