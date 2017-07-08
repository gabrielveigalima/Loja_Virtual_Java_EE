<%-- 
    Document   : cadCarrinho
    Created on : 07/07/2017, 21:53:00
    Author     : Gabriel Lima
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.CarrinhoDao"%>
<%@page import="model.Carrinho"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id_curso = request.getParameter("id");
    String id_usuario = (String) session.getAttribute("id");
    
    Carrinho c = new Carrinho();
    c.setId_produto(id_curso);
    c.setId_usuario(id_usuario);
    
    CarrinhoDao dao = new CarrinhoDao();
    if(dao.cadCarrinho(c)){
          
        %>
        <c:redirect url="carrinho.jsp"></c:redirect>
        <%
    }else{
        System.out.println("NAOOOOOOOOOOO MEC");
         %>
        <c:redirect url="index.jsp"></c:redirect>
        <%
    }
%>