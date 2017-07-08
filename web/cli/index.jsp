<%@page import="dao.CursosDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="valida.jsp"></c:import>
<c:import url="menu.jsp"></c:import>
        <section>

            <div class="home-carousel">

                <div class="dark-mask"></div>

                <div class="container">
                    <div class="homepage owl-carousel">
                        <div class="item">
                            <div class="row">
                                <div class="col-sm-5 right">
                                  
                                    <h1>PROGRAMAÇÃO ANDROID</h1>
                                    <p>DESENVOLVIMENTO MOBILE.
                                        <br />By Gabriel Lima.</p>
                                </div>
                                <div class="col-sm-7">
                                    <img class="img-responsive" src="img/cursos/android.png" alt=""  >
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row">

                                <div class="col-sm-7 text-center">
                                    <img class="img-responsive" src="img/website.png"  alt="">
                                </div>

                                <div class="col-sm-5">
                                    <h2>Desenvolvimento Web</h2>
                                    <ul class="list-style-none">
                                        <li>DESENVOLVIMENTO WEB</li>
                                        <li>By Yago Barros.</li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                        <div class="item">
                            <div class="row">
                                <div class="col-sm-5 right">
                                    <h1>LÓGICA DE PROGRAMAÇÃO</h1>
                                    <ul class="list-style-none">
                                        <li>PRIMEIROS PASSOS</li>
                                        <li>BY SERGIO HEITOR</li>
                                        
                                    </ul>
                                </div>
                                <div class="col-sm-7">
                                    <img class="img-responsive" src="img/cursos/logica.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row">
                                <div class="col-sm-7">
                                    <img class="img-responsive" src="img/cursos/Java.png" alt="">
                                </div>
                                <div class="col-sm-5">
                                    <h1>JAva se</h1>
                                    <ul class="list-style-none">
                                        <li>DESENVOLVIMENTO DESKTOP</li>
                                        <li>BY GABRIEL LIMA</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.project owl-slider -->
                </div>
            </div>

            <!-- *** HOMEPAGE CAROUSEL END *** -->
        </section>

        <section class="bar background-pentagon no-mb">
            <div class="container">
                
                    
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
                    </div>
            </section>
        
            
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