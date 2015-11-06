<%@ page import="estrutura.Codigo"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Busca por c&oacute;digo - ShareCode</title>
		<link rel="stylesheet" type="text/css" href="estilo.css">
	</head>
	<body>		
		<%@ include file="framework/topo.jsp" %> 
		<div id="conteudo">
                    <form action="/buscar_codigos" method="get">
                        <input name="busca" type="text" size="100" style="display:inline"/>
                        <input type="submit" value="Busca" style="display:inline; width: 60px"/>
                        <hr width="70%" align="left" />
                        <%
                            Codigo[] encontrados = (Codigo[]) sessao.getAttribute("resultadosBuscaCodigo");
                            sessao.removeAttribute("resultadosBuscaCodigo");
                            if (encontrados != null) {
                        %>
                        <div id="resultados">
                            <%
                                if (encontrados.length == 0) {
                            %>
                            <h3>Sua pesquisa n&atilde;o obteve resultados</h3>
                            <%                } else {
                                for (int i = 0; i < encontrados.length; i++) {
                                    String nome = encontrados[i].getNome();
                            %>
                            <div class="resultado">
                                <a href="visualizar_codigo.jsp?nome=<%= nome %>"><h3><%= nome %></h3></a>
                            </div>
                            <%
                                    }
                                }
                            %>
                        </div>
                        <% }%>
                    </form>
		</div>
		<div id="rodape"></div>
	</body>
</html>
