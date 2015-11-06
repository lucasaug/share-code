package estrutura;

/*
 * Implementacão de usuario
 *
 * CONSTRUTOR:
 * 
 * Usuario(String Nome, String Login, String Senha, String Email)
 * 
 * METODOS:
 * Getters e setters para os atributos:
 * proximo (proximo usuario na lista)
 * nome
 * login
 * email
 * usuario
 * nAcad
 * profissao
 * nascimento
 *
 * Getter para mensagensRecebidas(setter para mensagensRecebidas nao foi implementado)
 * Setter para senha (getter para a senha nao foi implementado, pois nao e necessario
 * devido à existencia do metodo autentica, visto a seguir)
 * 
 * autentica(String Login, String Senha)                - Retorna true caso o login e senha 
 *                                                        recebidos sejam iguais aos do
 *                                                        usuario, do contrario retorna false
 * adicionaMensagem(Usuario remetente, String assunto, String conteudo) -
 *                                                      - Adiciona uma nova mensagem na lista
 *                                                        de mensagens desse usuario. Retorna -1
 *                                                        caso a memoria seja esgotada. Retorna 0
 *                                                        se a inclusao for bem sucedida
 *
 */

public class Usuario {
    
    private Usuario proximo;
    private String nome;
    private String login;
    private String senha;
    private String email;
    private String nAcad;
    private String profissao;
    private String nascimento;
    private Mensagens mensagensRecebidas;
    
    // Construtores
    
    public Usuario(){}
    
    public Usuario(String Nome, String Login, String Senha, String Email){
        nome               = Nome;
        login              = Login;
        senha              = Senha;
        email              = Email;
        nAcad = "";
        profissao = "";
        nascimento = "";
        mensagensRecebidas = new Mensagens();
    }
    
    // Getters
    
    public Usuario getProximo(){
        return proximo;
    }
    
    public String getNome(){
        return nome;
    }
    
    public String getLogin(){
        return login;
    }
    
    public String getEmail(){
        return email;
    }
    
    public String getNAcad(){
        return nAcad;
    }
    
    public String getProfissao(){
        return profissao;
    }
    
    public String getNascimento(){
        return nascimento;
    }
    
    public Mensagens getMensagens(){
        return mensagensRecebidas;
    }
    
    // Setters
    
    public void setProximo(Usuario novoProximo){
        proximo = novoProximo;
    }
    
    public void setNome(String novoNome){
        nome = novoNome;
    }
    
    public void setLogin(String novoLogin){
        login = novoLogin;
    }
    
    public void setSenha(String novaSenha){
        senha = novaSenha;
    }
    
    public void setEmail(String novoEmail){
        email = novoEmail;
    }
    
    public void setNAcad(String novoNAcad){
        nAcad = novoNAcad;
    }
    
    public void setProfissao(String novoProfissao){
        profissao = novoProfissao;
    }
    
    public void setNascimento(String novoNascimento){
        nascimento = novoNascimento;
    }
    
    // Outros metodos
    
    public int adicionaMensagem(Usuario remetente, String assunto, String conteudo){
        return mensagensRecebidas.inclui(remetente, this, assunto, conteudo);
    }
    
    public boolean autentica(String Login, String Senha){
        if(login.equals(Login) && senha.equals(Senha)){
            return true;
        }
        return false;
    }
    
}
