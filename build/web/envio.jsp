<!DOCTYPE html>
<html>
    <head>
        <title>Envio de c&oacute;digo - ShareCode</title>
        <link rel="stylesheet" type="text/css" href="estilo.css">
    </head>
    <body>		
            <%@ include file="framework/topo.jsp" %> 
	    <div id="conteudo">
	        <div style="margin-left: auto; margin-right: auto; padding-bottom: 30px;">
	            <form method="post" action="/envia_codigo">
		            <span class="input">
				        <span class="nome">Nome do c&oacute;digo:</span>
		                    <span class="tipo">
		                        <input type="text" name="nome"/>
		                    </span>
		                </span><br />
		            <span class="input">
		                <span class="nome">Linguagem:</span>
		                <span class="tipo">
		                    <input type="text" name="linguagem"/>
		                </span>
		            </span><br />
		            <span class="input">
                        <span class="nome">Insira o c&oacute;digo aqui:</span>
		                <span class="tipo" id="codigo">
                            <textarea name="codigo" style="width: 600px; height: 150px;" 
                                      resizeable="false"></textarea>
		                </span>
		            </span>
		            <br/>
		            <input type="submit" value="Enviar c&oacute;digo" />
		        </form>
		    </div>
        </div>
        <div id="rodape"></div>
    </body>
</html>
