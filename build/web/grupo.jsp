<!DOCTYPE html>
<html>
	<head>
		<title>Grupo - ShareCode</title>
		<link rel="stylesheet" type="text/css" href="estilo.css" />
		<style type="text/css">

		#editar{
			width: 4%;
			height: 2.5%;
			font-size: 8pt;
			margin-left: 17%;
			position: fixed;
		}
		.inline{
			display: inline;
		}
		.lefted{
			margin-left: 5%;
		}

		</style>
		<script type="text/javascript">

			var elementosEdit = ["nome","email","criacao"];

			function editar(){
				for(var i in elementosEdit){
					var campo = document.getElementById(elementosEdit[i]+"Edit");
					campo.value = document.getElementById(elementosEdit[i]).innerHTML;
					campo.setAttribute("type","text");
				}
				var botao = document.getElementById("editar");
				botao.value="Concluir";
				botao.setAttribute("onclick","concluir()");
				botao.style.marginLeft="35%";
			}

			function concluir(){
				for(var i in elementosEdit){
					var info = document.getElementById(elementosEdit[i]);
					var campo = document.getElementById(elementosEdit[i]+"Edit");
					info.innerHTML = campo.value;
					campo.setAttribute("type","hidden");
				}
				document.getElementById("email").setAttribute("href","mailto:"+document.getElementById("emailEdit").value);
				var botao = document.getElementById("editar");
				botao.value="Editar";
				botao.setAttribute("onclick","editar()");
				botao.style.marginLeft="17%";
			}

			function digitaCriacao(e){
				var campo = document.getElementById("criacaoEdit");
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
		<link rel="stylesheet" type="text/css" href="estilo.css">
	</head>
	<body>
                <%@ include file="framework/topo.jsp" %> 
		<div id="conteudo">
		    <h2 id="nome" class="inline">TriLambda</h2>
		    <span class="input">
		    	<span class="tipo">
		    		<input type="hidden" id="nomeEdit" />
		    	</span>
		    </span>
		    <input type="button" value="Editar" id="editar" class="inline" onclick="editar()">
		    <br />
		    <h3>Informa&ccedil;&otilde;es Gerais</h3>
		    <div id="geral" class="lefted">
		    	<h4>
		    		<span>Membros:&nbsp;<span>
		    		<div id="membros" class="lefted">
		    			<span>Lucas Augusto Freire de Oliveira</span><br />
		    			<span>Rafael de Oliveira Ribeiro</span><br />
		    			<span>Rafael Wemerson Soares Porto</span><br />
		    			<span>Raphael Esteves Motta</span>
		    		</div>
		    	</h4>
		    	<h4>Data de cria&ccedil;&atilde;o:&nbsp;
		    		<span id="criacao">01/01/2013</span>
		    		<span class="input">
		    			<span class="tipo">
		    				<input type="hidden" id="criacaoEdit" onkeydown="digitaCriacao(event)" />
		    			</span>
		    		</span>
		    	</h4>
		    </div>
		    <h3>Informa&ccedil;&otilde;es Profissionais</h3>
		    <div id="profissional" class="lefted">
		    	<h4>
		    		<span>Interesses:&nbsp;<span>
		    		<div id="interesses" class="lefted">
		    			<span>Designers</span><br />
		    			<span>Desenhistas</span><br />
		    		</div>
		    	</h4>
		    	<h4>
		    		<span>Linguagens Computacionais Conhecidas:&nbsp;<span>
		    		<div id="linguagensProgramacao" class="lefted">
		    			<span>C/C++</span><br />
		    			<span>Java</span><br />
		    			<span>Assembly 8086</span><br />
		    			<span>Javascript</span><br />
		    			<span>HTML</span><br />
		    			<span>CSS</span>
		    		</div>
		    	</h4>
		    	<h4>
		    		<span>Idiomas Conhecidos:&nbsp;<span>
		    		<div id="idiomas" class="lefted">
		    			<span>Portugu&ecirc;s do Brasil</span><br />
		    			<span>Ingl&ecirc;s</span><br />
		    			<span>Japon&ecirc;s</span><br />
		    			<span>Alem&atilde;o</span><br />
		    		</div>
		    	</h4>
		    </div>
		    <h3>Informa&ccedil;&otilde;es de Contato</h3>
		    <div id="contato" class="lefted">
		    	<h4>Email:&nbsp;
		    		<a href="mailto:luc.aug.freire@gmail.com" id="email">luc.aug.freire@gmail.com</a>&nbsp;(Chefe)
		    		<span class="input">
		    			<span class="tipo">
		    				<input type="hidden" id="emailEdit" />
		    			</span>
		    		</span>
		    	</h4>		    	
		   	</div>
		</div>
		<div id="rodape"></div>
	</body>
</html>