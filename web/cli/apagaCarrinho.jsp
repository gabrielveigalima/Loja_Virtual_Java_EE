<%-- 
    Document   : apagaCarrinho
    Created on : 08/07/2017, 12:23:11
    Author     : Gabriel Lima
--%>
<%@page import="dao.CarrinhoDao"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    boolean apagarItem = new CarrinhoDao().apagarItem(id);
    if(apagarItem){
        System.out.println("Apagouuuuuuu");
        %>
        <c:redirect url="carrinho.jsp"></c:redirect>
        <%
    }else{
        System.out.println("Naoooooooo Apagou");
        %>
        <c:redirect url="carrinho.jsp"></c:redirect>
        <%
    }
%>

