package estrutura;

/*
 * Implementacão de codigo
 *
 * CONSTRUTOR:
 * 
 * Codigo(String Nome, String Conteudo, String Tipo, Usuario Autor)
 * 
 * METODOS:
 * Getters e setters para os atributos:
 * proximo (proximo codigo na lista)
 * nome
 * conteudo
 * tipo
 * autor
 * 
 * Getter para numAcessos
 * 
 * incNumAcessos - Incrementa o numero de acessos
 */

public class Codigo {
    
    private Codigo proximo;
    private String nome;
    private String conteudo;
    private String tipo;
    private Usuario autor;
    private int numAcessos;
    
    // Construtores
    
    public Codigo(){}
    
    public Codigo(String Nome, String Conteudo, String Tipo, Usuario Autor){
        nome               = Nome;
        conteudo = Conteudo;
        tipo = Tipo;
        autor = Autor;
        numAcessos = 0;
    }
    
    // Getters
    
    public Codigo getProximo(){
        return proximo;
    }
    
    public String getNome(){
        return nome;
    }
    
    public String getConteudo(){
        return conteudo;
    }
    
    public String getTipo(){
        return tipo;
    }
    
    public Usuario getAutor(){
        return autor;
    }
    
    public int getNumAcessos(){
        return numAcessos;
    }
    
    // Setters
    
    public void setProximo(Codigo novoProximo){
        proximo = novoProximo;
    }
    
    public void setNome(String novoNome){
        nome = novoNome;
    }
    
    public void setConteudo(String novoConteudo){
        conteudo = novoConteudo;
    }
    
    public void setTipo(String novaTipo){
        tipo = novaTipo;
    }
    
    public void setAutor(Usuario novaAutor){
        autor = novaAutor;
    }
    
    public void incNumAcessos(){
        numAcessos++;
    }
    
}