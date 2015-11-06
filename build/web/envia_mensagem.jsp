<!DOCTYPE html>
<html>
	<head>
		<title>Enviar mensagem - ShareCode</title>
		<link rel="stylesheet" type="text/css" href="estilo.css">
	</head>
	<body>		
		<%@ include file="framework/topo.jsp" %> 
		<div id="conteudo">
		    <form action="/enviar_mensagem" method="post">
		        <span class="input">
			        <span class="nome">Nome de us&uacute;ario do destinat&aacute;rio:</span>
			        <span class="tipo">
				        <input type="text" name="dest" id="dest"/>
			        </span>
			    </span>
			    <br/>
			    <span class="input">
				    <span class="nome">Assunto:</span>
				    <span class="tipo">
					    <input type="text" name="assunto" id="assunto"/>
				    </span>
			    </span>
			    <br/>
			    <span class="input">
				    <span class="nome">Mensagem:</span>
				    <span class="tipo">
					    <textarea name="msg" style="width: 600px; height: 150px;" 
                                      resizeable="false"></textarea>
				    </span>
			    </span>
		        <br/>
		        <input type="submit" value="Enviar mensagem" />
			</form>
		</div>
		<div id="rodape"></div>
	</body>
</html>
