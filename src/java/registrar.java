import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import estrutura.Usuarios;
import java.io.*;

public class registrar extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nome    = request.getParameter("nome");
        String usuario = request.getParameter("usuario");
        String email   = request.getParameter("email");
        String senha   = request.getParameter("senha");
        PrintWriter saida = response.getWriter();
        
        int resultado = Usuarios.inclui(nome, usuario, senha, email);
        if(resultado == 1){
            saida.println("<!DOCTYPE html>\n"
                    + "<html>\n"
                    + "  <head>\n"
                    + "    <title>ShareCode</title>\n"
                    + "    <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n"
                    + "	 </head>"
                    + "  <body>"
                    + "    <p>Nome de usuário ja existente</p>"
                    + "    <a href=\"cadastrar.jsp\">Voltar</a>"
                    + "  </body>"
                    + "</html>");
        }else if(resultado != -1){
            saida.println("<!DOCTYPE html>\n"
                    + "<html>\n"
                    + "  <head>\n"
                    + "    <title>ShareCode</title>\n"
                    + "    <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n"
                    + "	 </head>"
                    + "  <body>"
                    + "    <p>Registrado com sucesso!</p>"
                    + "    <form action=\"/login\" method=\"post\">"
                    + "         <input type=\"hidden\" name=\"usuario\" value="+usuario+" />"
                    + "         <input type=\"hidden\" name=\"senha\" value="+senha+" />"
                    + "         <input type=\"submit\" value=\"Página Principal\" />"
                    + "    </form>"
                    + "  </body>"
                    + "</html>");            
        }
        saida.close();
    }
}
