package estrutura;

import java.util.Date;

/*
 * Implementacão de mensagem pessoal
 *
 * CONSTRUTOR:
 * 
 * Mensagem(Usuario Remetente, Usuario Destinatario, String Conteudo)
 * 
 * METODOS:
 * Getters e setters para o atributo "proxima", que é a mensagem seguinte na lista
 * Getters para os atributos "remetente", "destinatario", "conteudo", "assunto", "data" e "id"
 * 
 * Obs: Data é atribuída durante a criaçao da mensagem
 * Obs2: Os atributos sao todos preenchidos durante a criaçao, nao podendo ser
 * alterados
 *
 */

public class Mensagem {
    private Mensagem proxima;
    private Usuario  remetente;
    private Usuario  destinatario;
    private String   conteudo;
    private String   assunto;
    private String   data;
    private int      id;
    
    // Construtor
    
    public Mensagem(Usuario Remetente, Usuario Destinatario,String Assunto, String Conteudo, int Id){
        remetente    = Remetente;
        destinatario = Destinatario;
        assunto      = Assunto;
        conteudo     = Conteudo;
        id           = Id;
        data         = new Date().toString();
    }
    
    // Setters
    
    public void setProxima(Mensagem Proxima){
        proxima = Proxima;
    }
    
    // Getters
    
    public Mensagem getProxima(){
        return proxima;
    }
    
    public Usuario getRemetente(){
        return remetente;
    }
    
    public Usuario getDestinatario(){
        return destinatario;
    }
    
    public String getAssunto(){
        return assunto;
    }
    
    public String getConteudo(){
        return conteudo;
    }
    
    public String getData(){
        return data;
    }
    
    public int getId(){
        return id;
    }
}
