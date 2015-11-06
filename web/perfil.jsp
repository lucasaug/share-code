    <%@ page import="estrutura.Usuarios"%>
<%@ page import="estrutura.Usuario"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Perfil - ShareCode</title>
		<link rel="stylesheet" type="text/css" href="/estilo.css" />
		<style type="text/css">

		#editar, #concluir{
			width: 4%;
			height: 2.5%;
			font-size: 8pt;
			margin-left: 17%;
			position: fixed;
		}
                #concluir{
                    margin-left: 35%;
                }
		.inline{
			display: inline;
		}
		.lefted{
			margin-left: 5%;
		}

		</style>
		<script type="text/javascript">

			var elementosEdit = ["login", "nome","nAcad","profissao","email","nascimento"];

			function edita(){
				for(var i in elementosEdit){
					var campo = document.getElementById(elementosEdit[i]+"Edit");
					campo.value = document.getElementById(elementosEdit[i]).innerHTML;
					campo.setAttribute("type","text");
				}
				document.getElementById("editar").setAttribute("type", "hidden");
				document.getElementById("concluir").setAttribute("type", "submit");
			}

			function digitaNascimento(e){
				var campo = document.getElementById("nascimentoEdit");
				var valor = campo.value;
				var caracter = e.keyCode;
				if((caracter>=48) && (caracter<=57)){
					if((valor.length==2) || (valor.length==5)){
						valor+="/";
						campo.value = valor;
					}
				}
			}

		</script>
	</head>
	<body>
		<%@ include file="/framework/topo.jsp" %> 
                <%
                    Usuario usuario = Usuarios.usuario_existe(request.getParameter("usuario"));
                %>
		<div id="conteudo">
                    <form method="post" action="edita_usuario">
                        <h2>Nome de usu&aacuterio: </h2><h2 id="login" class="inline"><%= usuario.getLogin() %></h2>
                        <span class="input">
                            <span class="tipo">
                                <input type="hidden" id="loginEdit" name="loginEdit" />
                            </span>
                        </span>
                        <%
                            if(usuario==(Usuario)sessao.getAttribute("usuarioLogado")){
                        %>
                        <input type="button" value="Editar" id="editar" class="inline" onclick="edita()" />
                        <input type="hidden" value="Concluir" id="concluir" class="inline" />
                        <%
                            }
                        %>
                        <br />
                        <h3>Informa&ccedil;&otilde;es Pessoais</h3>
                        <div id="pessoal" class="lefted">
                            <h4>Nome:&nbsp;
                                <span id="nome"><%= usuario.getNome()%></span>
                                <span class="input">
                                    <span class="tipo">
                                        <input type="hidden" id="nomeEdit" name="nomeEdit" />
                                    </span>
                                </span>
                            </h4>
                            <h4>Data de nascimento:&nbsp;
                                <span id="nascimento"><%= usuario.getNascimento()%></span>
                                <span class="input">
                                    <span class="tipo">
                                        <input type="hidden" id="nascimentoEdit" name="nascimentoEdit" onkeydown="digitaNascimento(event)" />
                                    </span>
                                </span>
                            </h4>
                        </div>
                        <h3>Informa&ccedil;&otilde;es Profissionais</h3>
                        <div id="profissional" class="lefted">
                            <h4>N&iacute;vel acad&ecirc;mico:&nbsp;
                                <span id="nAcad"><%= usuario.getNAcad()%></span>
                                <span class="input">
                                    <span class="tipo">
                                        <input type="hidden" id="nAcadEdit" name="nAcadEdit" />
                                    </span>
                                </span>
                            </h4>
                            <h4>Profiss&atilde;o:&nbsp;
                                <span id="profissao"><%= usuario.getProfissao()%></span>
                                <span class="input">
                                    <span class="tipo">
                                        <input type="hidden" id="profissaoEdit" name="profissaoEdit" />
                                    </span>
                                </span>
                            </h4>
                        </div>
                        <h3>Informa&ccedil;&otilde;es de Contato</h3>
                        <div id="contato" class="lefted">
                            <h4>Email:&nbsp;
                                <a href="mailto:"+<%= usuario.getEmail()%> id="email"><%= usuario.getEmail()%></a>
                                <span class="input">
                                    <span class="tipo">
                                        <input type="hidden" id="emailEdit" name="emailEdit" />
                                    </span>
                                </span>
                            </h4>		    	
                        </div>
                    </form>
		</div>
		<div id="rodape"></div>
	</body>
</html>