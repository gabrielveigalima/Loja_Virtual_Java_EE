<%@page import="dao.UsuarioDao"%>
<%@page import="dao.ClienteDao"%>
<%@page import="model.Usuario"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Underline Courses</title>
    </head>
    <body>
        <%  //Inicia a Sessão
            HttpSession sessao = request.getSession();
            //Pega a ação que será realizada 
            String action = request.getParameter("action");
            String msg = "";
            ClienteDao dao = new  ClienteDao();
            //Verifica se a ação é para cadastrar usuário
            if(action.equals("cad")){
                //Pega os dados do formulário 
                String nome = request.getParameter("nome");
                String email = request.getParameter("email");
                String senha1 = request.getParameter("pws1");
                String senha2 = request.getParameter("pws2");
                //Verifcica se as senhas são iguais
                if(senha1.equals(senha2)){
                    //Verifa se alguns dos campos estão fazios 
                    if(nome == null || email == null || senha1 == null){
                    msg = "<div class='bg-success'><h4 class'text-center'>Preencha todos os campos</h4></div>";
                }else{
                     //Instacia a classe e seta os objetos 
                    Usuario c = new Usuario();
                    c.setNome(nome);
                    c.setEmail(email);
                    c.setSenha(senha1);
                    //Verifca se cadastrou 
                    if(dao.cadastroCli(c)){
                             msg = "<div class='bg-success'><h4 class='text-center' style='padding-top:10px; padding-bottom:5px'>Cadastro realizado com sucesso.</h4></div><br>";
                        }else{
                            msg = "<div class='bg-danger'><h4 class='text-center' style='padding-top:10px; padding-bottom:5px'>Erro ao cadastrar usuário.</h4></div><br>"; 
                        }
                }
                    } else{
                    msg = "<div class='bg-danger'><h4 class='text-center' style='padding-top:10px; padding-bottom:5px'>Senhas não combinam.</h4></div><br>"; 
                }
               //Cria a sessão da mensagem 
                sessao.setAttribute("msg", msg);
            }
            
            //Verifca se a ação é para cadastrar 
            if(action.equals("log")){
                //Pegas os dados do formulário e joga para as variáveis 
                String email = request.getParameter("email");
                String senha = request.getParameter("senha");
                //Instancia a classe e passa os parametros para o método
                Usuario u = new UsuarioDao().validaLogin(email,senha);
                //Verifca se o resultado é diferente de nulo
                if(u!=null){
                       
                        //Cria a sessões 
                        session.setAttribute("msg", "Logou");
                        
                        session.setAttribute("user", u.getNome());
                        session.setAttribute("id", u.getId());
                        //Redireciona a página 
                       %>
                       <c:redirect url="cli/index.jsp"></c:redirect>
                       <%
                }else{
                    //Cria a sessão de aviso e redireciona a página 
                    session.setAttribute("msg", "Não Logou");
                }
            }
        %>
        <c:redirect url="formCliente.jsp"></c:redirect>
        
    </body>
</html>
