<%@page import="model.Cursos"%>
<%@page import="dao.CursosDao"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="acesso.Conexao"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.CarrinhoDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.Carrinho"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="valida.jsp"></c:import>
<c:import url="menu.jsp"></c:import>

        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1>Meu carrinho</h1>
                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        
                    </div>
                    <div class="col-md-9 clearfix" id="basket">
                        <div class="box">
                            <form method="post" action="shop-checkout1.html">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th colspan="2">Cursos</th>
                                                <th>Preço do curso</th>
                                                <th>Desconto</th>
                                                <th colspan="2">Total</th>
                                            </tr>
                                        </thead>
                                        <%
                                            //Uma variável recebe o valor da sessão 
                                            String id_usuario = (String) session.getAttribute("id");
                                            //Instancia a classe e passa os parametros para o método
                                            ResultSet dao = new CarrinhoDao().verCarrinho(id_usuario);
                                            ResultSet cursosdao;
                                            Float total = (float)0;
                                            //Pega o primero resultado 
                                            if(dao.first()){
                                                cursosdao = new CursosDao().verCursoCarrinho(dao.getString("id_produto"));
                                                total = Float.parseFloat(cursosdao.getString("valor"));
                                                %>
                                                
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <a href="#">
                                                                <img src="img/cursos/<%=cursosdao.getString("img")%>" alt="White Blouse Armani">
                                                            </a>
                                                        </td>
                                                        <td><a href="produto.jsp?idCurso=<%=cursosdao.getString("id_curso")%>"><%=cursosdao.getString("nome")%></a>
                                                        </td>
                                                        <td><%=total%></td>
                                                        <td>R$0.00</td>
                                                        <td><%=total%></td>
                                                        <td><a href="apagaCarrinho.jsp?id=<%=dao.getString("id_carrinho")%>"><i class="fa fa-trash-o"></i></a>
                                                        </td>
                                                    </tr>

                                                </tbody>
                                                <%
                                                //Enquanto tiver próximo resultado fará isso 
                                                while(dao.next()){
                                                    cursosdao = new CursosDao().verCursoCarrinho(dao.getString("id_produto"));
                                                    System.out.println(dao.getString("id_produto")+" ID do produto");
                                                    total = total + Float.parseFloat(cursosdao.getString("valor"));
                                        %>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <a href="#">
                                                        <img src="img/cursos/<%=cursosdao.getString("img")%>" alt="White Blouse Armani">
                                                    </a>
                                                </td>
                                                <td><a href="produto.jsp?idCurso=<%=cursosdao.getString("id_curso")%>"><%=cursosdao.getString("nome")%></a>
                                                </td>
                                                <td><%=cursosdao.getString("valor")%></td>
                                                <td>R$0.00</td>
                                                <td><%=cursosdao.getString("valor")%></td>
                                                <td><a href="apagaCarrinho.jsp?id=<%=dao.getString("id_carrinho")%>"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                            </tr>
                                            
                                        </tbody>
                                        <%
                                                }
                                            }
                                        %>
                                        <tfoot>
                                            <tr>
                                                <th colspan="5">Total</th>
                                                <th colspan="2">R$<%=total%></th>
                                            </tr>
                                        </tfoot>
                                    </table>

                                </div>
                                <!-- /.table-responsive -->

                                <div class="box-footer">
                                    <div class="pull-left">
                                        <a href="cursos.jsp" class="btn btn-default"><i class="fa fa-chevron-left"></i> Continuar Comprando</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="comprado.jsp" class="btn btn-danger">Comprar<i class="fa fa-chevron-right"></i></a>
                                    </div>
                                </div>

                            </form>

                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.col-md-9 -->

                    <div class="col-md-3">
                        <div class="box" id="order-summary">
                            <div class="box-header">
                                <h3>Informações da Compra</h3>
                            </div>
                            <p class="text-muted">Aqui mostramos algumas características da sua compra, como desconto e valor da compra.</p>

                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td>Valor do SubTotal:</td>
                                            <th>R$<%=total%></th>
                                        </tr>
                                        <tr>
                                            <td>Desconto: </td>
                                            <th>R$00.00</th>
                                        </tr>
                                        <tr class="total">
                                            <td>Total: </td>
                                            <th>R$<%=total%></th>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>

                    </div>
                    <!-- /.col-md-3 -->

                </div>
                
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


        <!-- *** GET IT ***
_________________________________________________________ -->

                <section class="bar background-image-fixed-2 no-mb color-white text-center"  style="margin-top: 7cm;">
                    <div class="dark-mask"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="icon icon-lg"><i class="fa fa-file-code-o"></i>
                                </div>
                                <h3 class="text-uppercase">Você já pensou em ser um programador?</h3>
                                <p class="lead">Nós preparamos você para o mercado de trabalho</p>
                                <p class="text-center">
                                    <a href="cursos.jsp" class="btn btn-template-transparent-black btn-lg">Conheça nossos cursos</a>
                                </p>
                            </div>

                        </div>
                    </div>
                </section>

     
    <c:import url="rodape.jsp"></c:import>