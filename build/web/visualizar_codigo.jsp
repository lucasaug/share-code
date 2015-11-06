<%@page import="estrutura.Codigos" %>
<%@page import="estrutura.Codigo" %>
<%@page import="estrutura.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Visualiza&ccedil;&atilde;o de c&oacute;digo - ShareCode</title>
		<script src="bibliotecas/rainbow/rainbow.js"></script>
		<script src="bibliotecas/rainbow/language/generic.js"></script>
		<script src="bibliotecas/rainbow/language/javascript.js"></script>
                <script src="bibliotecas/rainbow/language/c.js"></script>
                <script src="bibliotecas/rainbow/language/coffeescript.js"></script>
                <script src="bibliotecas/rainbow/language/csharp.js"></script>
                <script src="bibliotecas/rainbow/language/css.js"></script>
                <script src="bibliotecas/rainbow/language/go.js"></script>
                <script src="bibliotecas/rainbow/language/haskell.js"></script>
                <script src="bibliotecas/rainbow/language/html.js"></script>
                <script src="bibliotecas/rainbow/language/java.js"></script>
                <script src="bibliotecas/rainbow/language/lua.js"></script>
                <script src="bibliotecas/rainbow/language/php.js"></script>
                <script src="bibliotecas/rainbow/language/python.js"></script>
                <script src="bibliotecas/rainbow/language/r.js"></script>
                <script src="bibliotecas/rainbow/language/ruby.js"></script>
                <script src="bibliotecas/rainbow/language/scheme.js"></script>
                <script src="bibliotecas/rainbow/language/shell.js"></script>
                <script src="bibliotecas/rainbow/language/smalltalk.js"></script>
		<link rel="stylesheet" type="text/css" href="bibliotecas/rainbow/themes/solarized-dark.css">
		<link rel="stylesheet" type="text/css" href="estilo.css">
	</head>
	<body>		
		<%@ include file="framework/topo.jsp" %> 
		<div id="conteudo">
                    <%
                        Codigo codigo = Codigos.codigo_existe(request.getParameter("nome"));
                        codigo.incNumAcessos();
                        Usuario autor = codigo.getAutor();
                        if(autor==logado){
                    %>
			<a href="edicao_codigo.jsp?nome=<%=request.getParameter("nome")%>"><input type="button" value="Editar c&oacute;digo" style="width:100%; position:relative; right:250px"></a>
                    <%
                        }
                    %>
                        <div id="formata_codigo">
		    	<pre><code id="codigo" style="background-color: #EEEEEE; display:block;" data-language="<%= codigo.getTipo() %>">
                            <%= codigo.getConteudo() %>
		    	</code></pre>
		    </div>
		</div>
		<div id="rodape"></div>
	</body>
</html>
