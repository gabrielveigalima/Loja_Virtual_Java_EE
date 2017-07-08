<%@page import="dao.CursosDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="menu.jsp"></c:import>
        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>Todas os cursos</h1>
                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">
                <p class="text-muted lead text-center">Aqui está todos os cursos que nosso site oferece a nossos alunos,sendo de desenvolvimento: Back-End, Front-End ou Design. Para comprar basta clicar em adicionar ao carrinho.</p>

                <div class="row products">

                    
                    <%
                               ResultSet cs = new CursosDao().pegaProdutos();
                               
                               while(cs.next()){
                               %>
                    
                            <div class="col-md-4 col-sm-6">
                                <div class="product">
                                    <div class="image">
                                        <a href="produto.jsp?idCurso=<%=cs.getString("id_curso")%>">
                                            <img src="img/cursos/<%=cs.getString("img")%>" alt="" class="img-responsive image1">
                                        </a>
                                    </div>
                                    <!-- /.image -->
                                    <div class="text">
                                        <h3><a href="produto.jsp?idCurso=<%=cs.getString("id_curso")%>"><%=cs.getString("nome")%></a></h3>
                                        <p class="price"> R$: <%=cs.getString("valor")%></p>
                                        <p class="buttons">
                                            <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                            <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </p>
                                    </div>
                                    <!-- /.text -->
                                    
                                    <div class="ribbon new">
                                        <div class="theribbon">NEW</div>
                                        <div class="ribbon-background"></div>
                                    </div>
                                    <!-- /.ribbon -->
                                </div>
                                <!-- /.product -->
                            </div>
                            <%
                            }
                            %>
                </div>
                <!-- /.products -->

                <div class="col-sm-12">

                    <div class="pages">

                        <p class="loadMore">
                            <a href="#" class="btn btn-template-main"><i class="fa fa-chevron-down"></i> Carregar mais</a>
                        </p>

                        <ul class="pagination">
                            <li><a href="#">&laquo;</a>
                            </li>
                            <li class="active"><a href="#">1</a>
                            </li>
                            <li><a href="#">2</a>
                            </li>
                            <li><a href="#">3</a>
                            </li>
                            <li><a href="#">4</a>
                            </li>
                            <li><a href="#">5</a>
                            </li>
                            <li><a href="#">&raquo;</a>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- /.col-sm-12 -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


        <!-- *** GET IT ***
_________________________________________________________ -->

        <section class="bar background-image-fixed-2 no-mb color-white text-center">
                    <div class="dark-mask"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="icon icon-lg"><i class="fa fa-file-code-o"></i>
                                </div>
                                <h3 class="text-uppercase">Você já pensou em ser um programador?</h3>
                                <p class="lead">Nós preparamos você para o mercado de trabalho</p>
                                <p class="text-center">
                                    <a href="index2.html" class="btn btn-template-transparent-black btn-lg">Conheça nossos cursos</a>
                                </p>
                            </div>

                        </div>
                    </div>
                </section>
<c:import url="rodape.jsp"></c:import>