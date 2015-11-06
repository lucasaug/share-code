import estrutura.Codigo;
import estrutura.Codigos;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "edita_codigo", urlPatterns = {"/edita_codigo"})
public class edita_codigo extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sessao = request.getSession(false);
        Codigo atual    = Codigos.codigo_existe(request.getParameter("nome"));
        String conteudo = request.getParameter("codigo");
        atual.setConteudo(conteudo);
        response.sendRedirect("/visualizar_codigo.jsp?nome="+request.getParameter("nome"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
