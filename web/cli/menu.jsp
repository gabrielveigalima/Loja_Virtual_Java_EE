<%@page import="dao.CursosDao"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Underline Courses</title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800' rel='stylesheet' type='text/css'>

    <!-- Bootstrap and Font Awesome css -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- Css animations  -->
    <link href="css/animate.css" rel="stylesheet">

    <!-- Theme stylesheet, if possible do not edit this stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- Custom stylesheet - for your changes -->
    <link href="css/custom.css" rel="stylesheet">

    <!-- Responsivity for older IE -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-icon-152x152.png" />
    <!-- owl carousel css -->

    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">
</head>
<style>
    #loginpv{
        background: #555555;
        border-color: #555555;
    }
      #loginpv2 li a:link{
           
            border-color: #fff;
          
          color:black;
        }
    
    
    
</style>
<body>

    <div id="all">

        <header>

            <!-- *** TOP ***
_________________________________________________________ -->
            <div id="top">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-5 contact">
                            <p class="hidden-sm hidden-xs"></p>
                            <p class="hidden-md hidden-lg"><a href="#" data-animate-hover="pulse"><i class="fa fa-phone"></i></a>  <a href="#" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                            </p>
                        </div>
                        <div class="col-xs-7">
                            <div class="social">
                                <a href="https://www.facebook.com/underlinedev/" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                <a href="https://plus.google.com/u/1/explore" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                <a href="https://twitter.com/UnderlineDev" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                <a href="contact2.html" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                            </div>

                            <div class="login">
                                <div class="dropdown" >
                                  <button id="loginpv" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Olá, ${sessionScope.user}
                                  <span class="caret"></span></button>
                                   <ul class="dropdown-menu text-right" id="loginpv2">
                                    <li><a href="perfil.jsp" style="color: #000;">Minha Conta</a></li>
                                    <li><a href="sair.jsp" style="color: #000;">Sair</a></li>
                                   </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!-- *** TOP END *** -->

            <!-- *** NAVBAR ***
    _________________________________________________________ -->

            <div class="navbar-affixed-top" data-spy="affix" data-offset-top="200">

                <div class="navbar navbar-default yamm" role="navigation" id="navbar">

                    <div class="container">
                        <div class="navbar-header">

                            <a class="navbar-brand home" href="index.jsp">
                                <img src="img/logo.png" alt="Universal logo" class="hidden-xs hidden-sm">
                                <img src="img/logo.png" alt="Universal logo" class="visible-xs visible-sm" width="200px" height="47px"><span class="sr-only">Universal - go to homepage</span>
                            </a>
                            <div class="navbar-buttons">
                                <button type="button" class="navbar-toggle btn-template-main" data-toggle="collapse" data-target="#navigation">
                                    <span class="sr-only">Toggle navigation</span>
                                    <i class="fa fa-align-justify"></i>
                                </button>
                            </div>
                        </div>
                        <!--/.navbar-header -->

                        <div class="navbar-collapse collapse" id="navigation">

                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="index.jsp">Home</a></li>
                            
                                <!-- ========== FULL WIDTH MEGAMENU ================== -->
                                <li class="dropdown use-yamm yamm-fw">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Cursos<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <div class="yamm-content">
                                                <div class="row">
                                                    
                                                    <div class="col-sm-12 text-align-center" style="text-align:center;">
                                                        
                                                        
                                                        <h5>Cursos</h5>
                                                        <ul>
                                                            <%
                                                            //Instancia a classe e o método 
                                                            ResultSet cs = new CursosDao().pegaProdutos();
                                                            //Enquanto existir um próximo resultado ele vai listar 
                                                            while(cs.next()){
                                                            %>
                                                            <li><a href="produto.jsp?idCurso=<%=cs.getString("id_curso")%>"><%=cs.getString("nome")%></a></li>
                                                           <%
                                                           }
                                                           %>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /.yamm-content -->
                                        </li>
                                    </ul>
                                </li>
                                <!-- ========== FULL WIDTH MEGAMENU END ================== -->

                                <li><a href="contatos.jsp">Contato</a> </li>
                                <li><a href="carrinho.jsp"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true" title="Verificar Carrinho" alt="Verificar Carrinho"></span></a></li>
                            </ul>
                              
                        </div>
                        <!--/.nav-collapse -->

                        <!--/.nav-collapse -->

                    </div>


                </div>
                <!-- /#navbar -->

            </div>
            <!-- *** NAVBAR END *** -->

        </header>
    </div>