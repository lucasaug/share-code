<%@page import="estrutura.Codigos" %>
<%@page import="estrutura.Codigo" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Edi&ccedil;&atilde;o de c&oacute;digo - ShareCode</title>
		<link rel="stylesheet" type="text/css" href="estilo.css">
	</head>
	<body>		
                <%@ include file="framework/topo.jsp" %> 
		<div id="conteudo">
                    <%
                        Codigo codigo = Codigos.codigo_existe(request.getParameter("nome"));
                    %>
                    <form method="get" action="\edita_codigo?nome=<%=request.getParameter("nome")%>">
                        <div id="formata_codigo">
                            <textarea name="codigo" rows="50" style="background-color: #EEEEEE; display:block; width: 100%; height: 90%;" data-language="<%= codigo.getTipo() %>">
                                <%= codigo.getConteudo() %>
                            </textarea>
                        </div>
			<input type="submit" style="width:100%; position:relative; right:250px" value="Atualizar c&oacute;digo" />
                    </form>
                </div>
		<div id="rodape"></div>
	</body>
</html>
