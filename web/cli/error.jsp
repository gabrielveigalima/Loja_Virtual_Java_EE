<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty erros}">
    <div class="alert alert-danger">
        <h2> Erros Encontrados: </h2> ${erros}
    </div>
</c:if>
<c:if test="${not empty avisos}">
    <div class="alert alert-success">
        <h2> ${avisos} </h2>
    </div>
</c:if>
<c:if test="${not empty alerta}">
    <div class="alert alert-warning">
        <h2> ${alerta} </h2>
    </div>
</c:if>