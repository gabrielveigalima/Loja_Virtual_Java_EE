<%@page import="model.Cursos"%>
<%@page import="dao.CursosDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="menu.jsp"></c:import>
<%
    String id = request.getParameter("idCurso");

    Cursos cs = new CursosDao().verCurso(id);
    if(cs!=null){
%>      
        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1><%=cs.getNome()%></h1>
                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">

                <div class="row">

                    <!-- *** LEFT COLUMN ***
		    _________________________________________________________ -->

                    <div class="col-md-9">

                        <div class="row" id="productMain">
                            <div class="col-sm-6">
                                <div id="mainImage">
                                    <img src="img/cursos/<%=cs.getImg()%>" alt="" class="img-responsive">
                                </div>
                                
                                <div class="ribbon new">
                                    <div class="theribbon">R$<%=cs.getPreco()%></div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                            </div>
                            <div class="col-sm-6">
                                <div class="box">

                                    <form>
                                        <h2 class="text-center"><%=cs.getNome()%></h2>
                                        <p class="price">R$<%=cs.getPreco()%></p>
                                        <p class="text-center">
                                            <button type="submit" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i><a href="cadCarrinho.jsp?id=<%=cs.getId()%>"> Adicionar ao carrinho</a></button>
                                            <button type="submit" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="adicionar aos favoritos"><i class="fa fa-heart-o"></i>
                                            </button>
                                        </p>

                                    </form>
                                </div>

                            </div>

                        </div>


                        <div class="box" id="details">
                            <p>
                                <h4>Detalhes do curso</h4>
                                <p><%=cs.getDescr()%></p>
                        </div>

                        <div class="box social" id="product-social">
                            <h4>Divulgue para seus amigos</h4>
                            <p>
                                <a href="#" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                <a href="#" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                            </p>
                        </div>

                        

                       

                    </div>
                                        
                    <!-- /.col-md-9 -->


                    <!-- *** LEFT COLUMN END *** -->

                    <!-- *** RIGHT COLUMN ***
		  _________________________________________________________ -->

                    <!-- /.col-md-3 -->

                    <!-- *** RIGHT COLUMN END *** -->

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
        <% }else{ %>
                 <c:redirect url="404.jsp"></c:redirect>
        <% } %>
        <!-- *** GET IT ***
_________________________________________________________ -->

        <div id="get-it">
            <div class="container">
                <div class="col-md-8 col-sm-12">
                    <h3>Gostou de algum curso do nosso site?</h3>
                </div>
                <div class="col-md-4 col-sm-12">
                    <a href="cursos.jsp" class="btn btn-template-transparent-primary">Compre um agora mesmo</a>
                </div>
            </div>
        </div>


        <!-- *** GET IT END *** -->


        <!-- *** FOOTER ***
_________________________________________________________ -->
 <c:import url="rodape.jsp"></c:import>