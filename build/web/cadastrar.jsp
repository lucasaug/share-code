<!DOCTYPE html>
<html>
	<head>
		<title>Cadastro - ShareCode</title>
		<link rel="stylesheet" type="text/css" href="estilo.css">
	</head>
	<body>
		<%@ include file="framework/topo.jsp" %> 
		<div id="conteudo">
			<form action="/registrar" method="post">
				<span class="input">
					<span class="nome">Nome:</span>
					<span class="tipo">
                                            <input type="text" name="nome" id="nome" autofocus/>
					</span>
				</span>
				<br/>
				<span class="input">
					<span class="nome">Usuário:</span>
					<span class="tipo">
						<input type="text" name="usuario" id="usuario"/>
					</span>
				</span>
				<br/>
				<span class="input">
					<span class="nome">E-mail:</span>
					<span class="tipo">
						<input type="text" name="email" id="email"/>
					</span>
				</span>
				<br/>
				<span class="input">
					<span class="nome">Senha:</span>
					<span class="tipo">
						<input type="password" name="senha" id="senha"/>
					</span>
				</span>
				<br/>
				<input type="submit" value="Cadastrar"/><input type="reset" value="Limpar"/>
			</form>
		</div>
		<div id="rodape"></div>
	</body>
</html>
