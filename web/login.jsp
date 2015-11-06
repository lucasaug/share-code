<!DOCTYPE html>
<html>
    <head>
        <title>Login - ShareCode</title>
        <link type="text/css" rel="stylesheet" href="estilo.css"></link>
        <style type="text/css">
            #submit{
                margin-top:0.5%;
            }
        </style>
    </head>
    <body>
        <%@ include file="framework/topo.jsp" %> 
        <div id="conteudo">
            <form action="/login" method="post">
                <span class="input">
                    <span class="tipo">
                        <input type="text" name="usuario" id="usuario" placeholder="Usu&aacute;rio" autofocus/>
                    </span>
                </span>
                <span class="input">
                    <span class="tipo">
                        <input type="password" name="senha" id="senha" placeholder="Senha" />
                    </span>
                </span>
                <input type="submit" name="submit" id="submit" value="Entrar" />
            </form>
        </div><div id="rodape">
        </div>
    </body>
</html>
