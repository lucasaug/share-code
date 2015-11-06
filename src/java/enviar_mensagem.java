import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import estrutura.Usuarios;
import estrutura.Usuario;

public class enviar_mensagem extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nome_dest = request.getParameter("dest");
        String assunto   = request.getParameter("assunto");
        String mensagem  = request.getParameter("msg");
        
        HttpSession sessao = request.getSession(false);
        
        Usuario remetente    = (Usuario)sessao.getAttribute("usuarioLogado");
        Usuario destinatario = Usuarios.usuario_existe(nome_dest);
        
        PrintWriter saida = response.getWriter();
        
        if(destinatario == null){
            saida.println("<!DOCTYPE html>\n"
                    + "<html>\n"
                    + "  <head>\n"
                    + "    <title>ShareCode</title>\n"
                    + "    <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n"
                    + "	 </head>"
                    + "  <body>"
                    + "    <p>O destinat&aacute;rio indicado n&atilde;o existe</p>"
                    + "    <a href=\"envia_mensagem.jsp\">Voltar</a>"
                    + "  </body>"
                    + "</html>");
        }else{
            int sucesso = destinatario.adicionaMensagem(remetente, assunto, mensagem);
            if(sucesso == 0){
                saida.println("<!DOCTYPE html>\n"
                    + "<html>\n"
                    + "  <head>\n"
                    + "    <title>ShareCode</title>\n"
                    + "    <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n"
                    + "	 </head>"
                    + "  <body>"
                    + "    <p>Mensagem enviada!</p>"
                    + "    <a href=\"index.jsp\">P&aacute;gina principal</a>"
                    + "  </body>"
                    + "</html>");
            }else{
                saida.println("<!DOCTYPE html>\n"
                    + "<html>\n"
                    + "  <head>\n"
                    + "    <title>ShareCode</title>\n"
                    + "    <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n"
                    + "	 </head>"
                    + "  <body>"
                    + "    <p>Erro interno!</p>"
                    + "    <a href=\"envia_mensagem.jsp\">Voltar</a>"
                    + "  </body>"
                    + "</html>");
            }
        }
        saida.close();
    }
}
