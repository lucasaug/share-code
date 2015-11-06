<%@ page import="estrutura.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Busca por usu&aacute;rios - ShareCode</title>
        <link rel="stylesheet" type="text/css" href="estilo.css">
    </head>
    <body>		
        <%@ include file="framework/topo.jsp" %> 
        <div id="conteudo">
            <form action="buscar_usuarios" method="post">
                <input type="text" name="busca" style="width:70%; display:inline;" />
                <input type="submit" value="Buscar" style="width:10%; display:inline;" />
            </form>
            <hr />
            <%
                Usuario[] encontrados = (Usuario[]) sessao.getAttribute("resultadosBuscaUsuario");
                sessao.removeAttribute("resultadosBuscaUsuario");
                if(encontrados != null){
            %>
            <div id="resultados">
                <%
                    if(encontrados.length == 0){
                %>
                <h3>Sua pesquisa n&atilde;o obteve resultados</h3>
                <%
                    }else{
                        for(int i = 0; i < encontrados.length; i++){
                            String login = encontrados[i].getLogin();
                %>
                <div class="resultado">
                    <a href="perfil.jsp?usuario=<%= login %>"><h3><%= login %></h3></a>
                    <p><%= encontrados[i].getNome()   %></p>
                </div>
                <%
                        }
                    }
                %>
            </div>
            <% } %>
        </div>
        <div id="rodape"></div>
    </body>
</html>
