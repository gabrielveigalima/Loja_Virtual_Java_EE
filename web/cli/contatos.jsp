<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="menu.jsp"></c:import>

<div id="content">
            <div class="container" id="contact">

                <div class="row">
                    <div class="col-md-8">

                        <section>
                            <div class="heading">
                                <h3>Formulário de Contato</h3>
                            </div>

                            <form>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="firstname">Primeiro Nome</label>
                                            <input type="text" class="form-control" id="firstname">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="lastname">Sobrenome</label>
                                            <input type="text" class="form-control" id="lastname">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="text" class="form-control" id="email">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">Assunto</label>
                                            <input type="text" class="form-control" id="subject">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="message">Messagem: </label>
                                            <textarea id="message" class="form-control"></textarea>
                                        </div>
                                    </div>

                                    <div class="col-sm-12 text-center">
                                        <button type="submit" class="btn btn-template-main"><i class="fa fa-envelope-o"></i> Enviar Mensagem</button>

                                    </div>
                                </div>
                                <!-- /.row -->
                            </form>

                        </section>

                    </div>

                    <div class="col-md-4">

                        <section>

                            <h3 class="text-uppercase">Endereço</h3>

                            <p><strong>Underline Developer Ltda.</strong>
                                <br>26/06 Rio de Janeiro
                                <br>Nova Iguaçu, Nilo Pessanha
                                <br>450Y 783J
                                <br>Brasil
                                <br>
                                <strong>Brasileiros</strong>
                            </p>

                            <h3 class="text-uppercase">Centro de atendimento</h3>

                            <p class="text-muted">Este número é gratuito se ligar do Brasil caso contrário, nós recomendamos que você use a forma eletrônica de comunicação.</p>
                            <p><strong>+55 21 4002-8922</strong>
                            </p>



                            <h3 class="text-uppercase">Suporte Eletrônico</h3>

                            <p class="text-muted">Em caso de Dúvidas entre em contato conosco atráves do nosso email.</p>
                            <ul>
                                <li><strong><a href="mailto:">underlinedev@gmail.com</a></strong></li>
                            </ul>

                        </section>

                    </div>

                </div>
                <!-- /.row -->


            </div>
            <!-- /#contact.container -->
        </div>
    
<c:import url="rodape.jsp"></c:import>