<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="menu.jsp"></c:import>
<c:import url="error.jsp"></c:import>

            <div class="container">
                
                <div class="row">
                    <div class="col-md-12">
                    <c:if test="${not empty sessionScope.msg}">
                        ${sessionScope.msg}
                       
                    </c:if>
                        
                        <div class="box">
                            <h2 class="text-uppercase">Criar Conta</h2>

                            <p class="lead">Não é nosso cliente registrado ainda ?</p>
                            <P> Com o registo com o nosso novo mundo da moda, descontos fantásticos e muito mais se abre para você! Todo o processo não o levará mais de um minuto! </ P>
                            <P class = "text-muted"> Se você tiver alguma dúvida, sinta-se à vontade para <a href="contact2.html"> nos contatar </a>, nosso centro de atendimento ao cliente está trabalhando para você. </p>
                            <hr>

                            <form action="valida.jsp" method="post" >
                                <input type="hidden" name="action" value="cad"> 
                                
                                <div class="form-group">
                                    <label for="name-login">Nome</label>
                                    <input type="text" name="nome" class="form-control" id="name-login" value="${cliente.nome}">
                                </div>
                                <div class="form-group">
                                    <label for="email-login">Email</label>
                                    <input type="email" name="email" class="form-control" id="email-login" value="${cliente.email}">
                                </div>
                                <div class="form-group">
                                    <label for="password-login">Senha</label>
                                    <input type="password" name="pws1" class="form-control" id="password-login">
                                </div>
                                <div class="form-group">
                                    <label for="password-login">Confirmar Senha</label>
                                    <input type="password" name="pws2" class="form-control" id="password-login">
                                </div>
                                
                                <div class="text-center">
                                    <button type="submit" class="btn btn-template-main"><i class="fa fa-user-md"></i> Registrar</button>
                                </div>
                            </form>
                        </div>
                    </div>

                 

                </div><!-- /.row -->

            </div><!-- /.container -->
            <br><br><br><br><br><br><br><br><br><br><br>
<c:import url="rodape.jsp"></c:import>