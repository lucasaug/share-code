		<div id="topo">
		    <a href="/index.jsp"><img src="/recursos/logo.png" /></a>
		    <div id="nav">
                        <a href="/index.jsp">Home</a>
                        <%@ page import="estrutura.Usuario" %>
                        <% 
                        // Codigo que mostra botoes de login e registro caso nenhum
                        // usuario esteja logado, do contrario, mostra opçoes
                        // exclusivas para usuarios logados.
                        HttpSession sessao = request.getSession(false); 
                        Usuario logado = (Usuario)sessao.getAttribute("usuarioLogado");
                        if(logado == null){
                        %>
                        <a href="/login.jsp">Login</a>
		    	<a href="/cadastrar.jsp">Registro</a>
                        <% }else{ 
                            String login = "usuario=" + logado.getLogin();
                        %>
		    	<a href="/perfil.jsp?<%= login %>">Perfil</a>
                        <a href="/ver_mensagens.jsp">Mensagens</a>
		    	<a href="/envia_mensagem.jsp">Enviar mensagem</a>
                        <a href="/envio.jsp">Envio de c&oacute;digo</a>
                        <a href="/busca_codigo.jsp">Procurar c&oacute;digo</a><br /><br /><br />
                        <a href="/busca_usuarios.jsp">Procurar usu&aacute;rio</a>
                        <a href="/mais_acessados.jsp">C&oacute;digos mais acessados</a>
                        <a href="/suporte.jsp">Suporte</a>
                        <a href="/logout">Logout</a>
                        <% } %>
		    </div>
                </div>