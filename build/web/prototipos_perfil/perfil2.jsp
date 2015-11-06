<!DOCTYPE html>
<html>
	<head>
		<title>Perfil - ShareCode</title>
		<link rel="stylesheet" type="text/css" href="/estilo.css" />
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

			var elementosEdit = ["nome", "usuario","nAcad","profissao","email","nascimento"];

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
		<div id="conteudo">
		    <h2 id="nome" class="inline">BlazeWave</h2>
		    <span class="input">
		    	<span class="tipo">
		    		<input type="hidden" id="nomeEdit" />
		    	</span>
		    </span>
		    <input type="button" value="Editar" id="editar" class="inline" onclick="editar()">
		    <br />
		    <h3>Informa&ccedil;&otilde;es Pessoais</h3>
		    <div id="pessoal" class="lefted">
		    	<h4>Nome:&nbsp;
		    		<span id="usuario">Rafael Ribeiro</span>
		    		<span class="input">
		    			<span class="tipo">
		    				<input type="hidden" id="usuarioEdit" />
		    			</span>
		    		</span>
		    	</h4>
		    	<h4>Data de nascimento:&nbsp;
		    		<span id="nascimento">01/01/2013</span>
		    		<span class="input">
		    			<span class="tipo">
		    				<input type="hidden" id="nascimentoEdit" onkeydown="digitaNascimento(event)" />
		    			</span>
		    		</span>
		    	</h4>
		    </div>
		    <h3>Informa&ccedil;&otilde;es Profissionais</h3>
		    <div id="profissional" class="lefted">
		    	<h4>N&iacute;vel acad&ecirc;mico:&nbsp;
		    		<span id="nAcad">Ensino m&eacute;dio incompleto</span>
		    		<span class="input">
		    			<span class="tipo">
		    				<input type="hidden" id="nAcadEdit" />
		    			</span>
		    		</span>
		    	</h4>
		    	<h4>Profiss&atilde;o:&nbsp;
		    		<span id="profissao">Estudante</span>
		    		<span class="input">
		    			<span class="tipo">
		    				<input type="hidden" id="profissaoEdit" />
		    			</span>
		    		</span>
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
		    			<span>Alem&atilde;o</span><br />
		    		</div>
		    	</h4>
		    </div>
		    <h3>Informa&ccedil;&otilde;es de Contato</h3>
		    <div id="contato" class="lefted">
		    	<h4>Email:&nbsp;
		    		<a href="mailto:radeori@gmail.com" id="email">radeori@gmail.com</a>
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
