<!DOCTYPE html>
<html>
	<head>
		<title>Mensagens - ShareCode</title>
		<link rel="stylesheet" type="text/css" href="estilo.css">
	</head>
	<body>		
		<%@ include file="framework/topo.jsp" %> 
                <%@ page import="estrutura.Usuario, estrutura.Mensagem, estrutura.Mensagens" %>
		<div id="conteudo">
                    <%
                        Mensagens recebidas = logado.getMensagens();
                        int qtdMensagens    = recebidas.conta_ocorrencias();
                        if(qtdMensagens == 0){
                    %>
                    <p>Sua caixa de mensagens est&aacute; vazia!</p>
                    <%
                        }else{
                    %>
                    <table width="110%" style="border:solid 2px; position:relative; left:-200px">
                        <tr>
                            <th width="30%">Remetente</th>
                            <th width="*">Assunto</th>
                        </tr>
                        <%
                            Mensagem aux = recebidas.le_inicio();
                            while(aux != null){
                                Usuario remetente = aux.getRemetente();
                                String  nome      = remetente.getNome() + "(" + remetente.getLogin() + ")";
                                String  assunto   = aux.getAssunto();
                                int     id        = aux.getId();
                        %>
                        <tr>
                            <td><%= nome %></td>
                            <td><a href="ve_mensagem.jsp?id=<%= id %>" > <%= assunto %> </a></td>
                        </tr>
                        <%
                                aux = aux.getProxima();
                            }
                        %>
                    </table>
                    <%
                        }
                    %>
                </div>
		<div id="rodape"></div>
	</body>
</html>
