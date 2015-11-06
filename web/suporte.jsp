<!DOCTYPE html>
<html>
  <head>
		<title>Suporte - ShareCode</title>
		<link rel="stylesheet" type="text/css" href="estilo.css">
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
			.tituloMetodo{
				padding: 0px;
				margin: 0px;
			}
		</style>
	</head>
	<body>		
		<%@ include file="framework/topo.jsp" %> 
		<div id="conteudo">
			<div>
				<summary>
					<h2 class="tituloMetodo">Ajuda</h2>
				</summary>
				<a href="./wiki.jsp"><h3>Wiki</h3></a>
			</div>
			<div>
				<summary>
					<h2 class="tituloMetodo">E-mail</h2>
				</summary>
				<a href="mailto:luc.aug.freire@gmail.com"><h3>luc.aug.freire@gmail.com (Administrador)</h3></a>
			</div>
			<div>
				<summary>
					<h2 class="tituloMetodo">Bilhete</h2>
				</summary>
				<form id="bilhete" name="bilhete">
					Nome:<input type="text" id="bilheteNome" name="bilheteNome" />
					<br />
					E-mail:<input type="email" id="bilheteEmail" name="bilheteEmail" />
					<br />
					<textarea placeholder="Digite aqui sua sugest&atilde;o, d&uacute;vida ou problema" style="height:200px;" id="bilheteMensagem" name="bilheteMensagem"></textarea>
					<br />
					<input type="submit" value="Enviar bilhete">
				</form>
			</div>
		</div>
		<div id="rodape"></div>
	</body>
</html>
