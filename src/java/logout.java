import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class logout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Simplesmente remove o atributo relativo ao usuario na sessao
        // e em seguida redireciona-o para a pagina principal
        request.getSession(true).removeAttribute("usuarioLogado");
        response.sendRedirect("index.jsp");
    }
}
