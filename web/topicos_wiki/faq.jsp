<!DOCTYPE html>
<html>
	<head>
		<title>FAQ - ShareCode</title>
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
				<h4><a href="/wiki.jsp">F&oacute;rum</a>&nbsp;->&nbsp;<a href="./faq.jsp">FAQ</a></h4>
			</div>
			<div id="topico">
				<h2 id="tituloTopico">FAQ</h2>
					<h5 id="conteudoTopico">
						<ol>
							<li>Como navegar no site?</li>
							<ul>
								<li>Basta clicar no link da p&aacute;gina desejada, tudo altamente intuitivo.</li>
							</ul>
						</ol>
					</h5>
					<div class="comentario">
						<h3 class="comentarioTitulo">
							D&uacute;vida
						</h3>
						<h5 class="comentarioConteudo">
							N&atilde;o entendi nada!
						</h5>
					</div>
			</div>
		</div>
		<div id="rodape"></div>
	</body>
</html>