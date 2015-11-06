import estrutura.Usuario;
import estrutura.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String senha   = request.getParameter("senha");
        PrintWriter saida = response.getWriter();
        
        Usuario aux = Usuarios.usuario_existe(usuario);
        if(aux == null){
            saida.println("<!DOCTYPE html>\n"
                    + "<html>\n"
                    + "  <head>\n"
                    + "    <title>ShareCode</title>\n"
                    + "    <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n"
                    + "	 </head>"
                    + "  <body>"
                    + "    <p>Senha e/ou usuario incorreto</p>"
                    + "    <a href=\"login.jsp\">Voltar</a>"
                    + "  </body>"
                    + "</html>");
        }else{
            if(aux.autentica(usuario, senha)){
                /*
                 * ------------------------- !!! PARTE IMPORTANTE !!! ----------------------------------
                 * 
                 * O objeto da classe Usuario representando o usuario logado atualmente fica armazenado
                 * como um atributo de sessao com nome igual a usuarioLogado, coo visto a seguir
                 * 
                 * ------------------------- !!! PARTE IMPORTANTE !!! ----------------------------------
                 */
                HttpSession sessao = request.getSession(true);
                sessao.setAttribute("usuarioLogado", aux);
                response.sendRedirect("index.jsp");
            }else{
                saida.println("<!DOCTYPE html>\n"
                        + "<html>\n"
                        + "  <head>\n"
                        + "    <title>ShareCode</title>\n"
                        + "    <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n"
                        + "	 </head>"
                        + "  <body>"
                        + "    <p>Senha e/ou usuario incorreto</p>"
                        + "    <a href=\"login.jsp\">Voltar</a>"
                        + "  </body>"
                        + "</html>");
            }
        }
        saida.close();
    }
}
