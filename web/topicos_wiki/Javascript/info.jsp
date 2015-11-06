<!DOCTYPE html>
<html>
	<head>
		<title>Informa&ccedil;&otilde;es Gerais - Javascript - ShareCode</title>
		<link rel="stylesheet" type="text/css" href="/estilo.css">
		<style type="text/css">
			#conteudo{
				margin-right: 30%;
			}
			#conteudo > *{
				margin:0px;
				border: 2px solid rgb(180,180,180);
				border-radius: 5px;
				padding: 2px;
			}
			#tituloTopico{
				border: 2px solid rgb(180,180,180);
				border-radius: 5px;
				padding: 2px;
				margin: 0px;
				margin-top: 5px;
			}
			.comentario{
				margin-top: 5px;
				margin-left: 5%;
				border: 2px solid rgb(180,180,180);
				border-radius: 5px;
				padding-left: 1%;
				padding-right: 1%;
			}
			.comentario *{
				margin: 0px;
			}
			.comentarioConteudo {
				border-top: 1px solid black;
			}
			#conteudo a{
				font-weight: 900;
				color: black;
				text-shadow: 3px 2px 2px rgb(200,200,200);
			}
			#conteudo a:hover{
				color: rgb(200,200,200);
				text-shadow: 3px 2px 2px black;
			}
			#conteudo a:active{
				color: rgb(200,200,200);
				text-shadow: -3px -2px 2px black;
			}
			#wikiNav *{
				margin: 0px;
			}
		</style>
	</head>
	<body>		
		<%@ include file="/framework/topo.jsp" %> 
		<div id="conteudo">
			<div id="wikiNav">
				<h4>
					<a href="/wiki.jsp">F&oacute;rum</a>&nbsp;->
					&nbsp;Javascript&nbsp;->
					&nbsp;<a href="./info.jsp">Informa&ccedil;&otilde;es Gerais</a>
				</h4>
			</div>
			<div id="topico">
				<h2 id="tituloTopico">Javascript - Informa&ccedil;&otilde;es Gerais</h2>
					<h5 id="conteudoTopico">
						<ul>
							<li>Escopo da linguagem: WEB</li>
						</ul>
					</h5>
					<div class="comentario">
						<h3 class="comentarioTitulo">
							Aplica&ccedil;&otilde;es
						</h3>
						<h5 class="comentarioConteudo">
							Para o que o Javascript &eacute; recomendado?
						</h5>
					</div>
			</div>
		</div>
		<div id="rodape"></div>
	</body>
</html>