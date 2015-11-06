import estrutura.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "edita_usuario", urlPatterns = {"/edita_usuario"})
public class edita_usuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sessao = request.getSession(false);
        Usuario atual    = (Usuario)sessao.getAttribute("usuarioLogado");
        String nome = request.getParameter("nomeEdit");
        String login = request.getParameter("loginEdit");
        String nAcad = request.getParameter("nAcadEdit");
        String profissao = request.getParameter("profissaoEdit");
        String email = request.getParameter("emailEdit");
        String nascimento = request.getParameter("nascimentoEdit");
        atual.setNome(nome);
        atual.setLogin(login);
        atual.setNAcad(nAcad);
        atual.setProfissao(profissao);
        atual.setEmail(email);
        atual.setNascimento(nascimento);
        response.sendRedirect("/perfil.jsp?usuario="+login);
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
