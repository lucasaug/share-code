<%@ page import="estrutura.Codigos"%>
<%@ page import="estrutura.Codigo"%>
<!DOCTYPE html>
<html>
	<head>
		<title>C&oacute;digos mais acessados - ShareCode</title>
		<link rel="stylesheet" type="text/css" href="estilo.css">
	</head>
	<body>		
		<%@ include file="framework/topo.jsp" %> 
		<div id="conteudo">
                    <%
                        Codigo[] encontrados = Codigos.codigo_contem("");
                        if (encontrados != null) {
                    %>
                    <div id="resultados">
                        <%
                            if (encontrados.length == 0);
                            else {
                            for (int i = 0; i < encontrados.length; i++) {
                                String nome = encontrados[i].getNome();
                        %>
                        <div class="resultado">
                            <a href="visualizar_codigo.jsp?nome=<%= nome%>"><h3><%= nome%> (<%= encontrados[i].getNumAcessos() %> acessos)</h3></a>
                        </div>
                        <%
                                }
                            }
                        %>
                    </div>
                    <% }%>
		</div>
		<div id="rodape"></div>
	</body>
</html>
