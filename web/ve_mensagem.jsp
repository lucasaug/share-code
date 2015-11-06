<!DOCTYPE html>
<html>
	<head>
		<title>Mensagem - ShareCode</title>
		<link rel="stylesheet" type="text/css" href="estilo.css">
	</head>
	<body>		
		<%@ include file="framework/topo.jsp" %> 
                <%@ page import="estrutura.Usuario, estrutura.Mensagem, estrutura.Mensagens" %>
		<div id="conteudo" style="position:relative; right: 150px;">
                    <%
                        String sId          = request.getParameter("id");
                        int id              = Integer.parseInt(sId);
                        Usuario logado      = (Usuario)sessao.getAttribute("usuarioLogado");
                        Mensagens recebidas = logado.getMensagens();
                        Mensagem alvo       = recebidas.busca_mensagem(id);
                        if(alvo == null){
                    %>
                    <p>Opps! Houve algum erro, e a mensagem desejada n&atildeo foi encontrada!</p>
                    <%
                        }else{
                            Usuario remetente = alvo.getRemetente();
                            String  nome      = remetente.getNome() + "(" + remetente.getLogin() + ")";
                            String  assunto   = alvo.getAssunto();
                            String  conteudo  = alvo.getConteudo();
                    %>
                    <h3>Assunto: <%= assunto %></h3>
                    <h3>Remetente: <%= nome %></h3><hr />
                    <p><%= conteudo %></p><hr />
                    <%
                        }
                    %>
                </div>
		<div id="rodape"></div>
	</body>
</html>
