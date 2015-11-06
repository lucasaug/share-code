package funcionalidades;

import estrutura.Usuario;
import estrutura.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "buscar_usuarios", urlPatterns = {"/buscar_usuarios"})
public class buscar_usuarios extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sessao = request.getSession();
        if(request.getParameter("busca") != null){
            String busca = request.getParameter("busca");
            Usuario[] encontrados = Usuarios.usuario_contem(busca);
            if(encontrados != null){
                sessao.setAttribute("resultadosBuscaUsuario", encontrados);
            }else{
                sessao.setAttribute("resultadosBuscaUsuario", new Usuario[0]);
            }
        }else{
            sessao.setAttribute("resultadosBuscaUsuario", null);
        }
        response.sendRedirect("/busca_usuarios.jsp");
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
