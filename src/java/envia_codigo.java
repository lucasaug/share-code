/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import estrutura.Codigos;
import estrutura.Usuario;
import estrutura.Usuario;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Casa
 */
@WebServlet(name = "envia_codigo", urlPatterns = {"/envia_codigo"})
public class envia_codigo extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nome    = request.getParameter("nome");
        String conteudo = request.getParameter("codigo");
        String tipo   = request.getParameter("linguagem");
        HttpSession sessao = request.getSession(false);
        Usuario autor   =   (Usuario)sessao.getAttribute("usuarioLogado");
        PrintWriter saida = response.getWriter();
        
        int resultado = Codigos.inclui(nome, conteudo, tipo, autor);
        if(resultado == 1){
            saida.println("<!DOCTYPE html>\n"
                    + "<html>\n"
                    + "  <head>\n"
                    + "    <title>ShareCode</title>\n"
                    + "    <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n"
                    + "	 </head>"
                    + "  <body>"
                    + "    <p>Nome de código ja existente</p>"
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
                    + "    <p>Enviado com sucesso!</p>"
                    + "    <form action=\"/index.jsp\" method=\"post\">"
                    + "         <input type=\"submit\" value=\"Página Principal\" />"
                    + "    </form>"
                    + "  </body>"
                    + "</html>");            
        }
        saida.close();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
