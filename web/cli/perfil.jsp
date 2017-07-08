<%@page import="java.sql.ResultSet"%>
<%@page import="dao.UsuarioDao"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="menu.jsp"></c:import>
<%
    
    String id_usuario = (String) session.getAttribute("id");
    Usuario u = new Usuario();
    u.setId(id_usuario);
    ResultSet dao = new UsuarioDao().perfil(id_usuario);
    
    ;
   
    
%>
    <br><br><br><br><br><br><br><br><br><br><br>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nome</th>
                            <th>Email</th>
                            <th>Senha</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <td><%=dao.getString("id_usuario")%></td>
                            <td><%=dao.getString("nome")%></td>
                            <td><%=dao.getString("email")%></td>
                            <td><%=dao.getString("pws")%></td>
                            
                        </tr>
                    </tfoot>
                </table>

            </div>
                            <br><br><br><br><br><br><br><br><br>

<c:import url="rodape.jsp"></c:import>
