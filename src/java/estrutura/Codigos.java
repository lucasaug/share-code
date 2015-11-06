package estrutura;
import java.util.regex.*;

/*
 * Implementacão de lista encadeada de codigos
 * Todos os metodos sao estaticos, para que o sistema possa ter acesso
 * aos codigos do sistema, como um banco de dados
 *
 *
 * METODOS:
 * le_inicio()                  - Retorna o primeiro codigo da lista
 * le_fim()                     - Retorna o ultimo codigo da lista
 * conta_ocorrencias()          - Retorna a quantidade de codigos
 * lista_vazia()                - Retorna true caso não hajam codigos
 * codigo_existe(String login) - Caso exista codigo com o nome recebido, retorna-o, do contrario
 *                                retorna null
 * codigo_contem(String padrao) - Retorna uma array com os codigos que contem a String padrao em seu 
 *                                 nome
 * inclui(String nome, String conteudo, String tipo)-
 *                              - Adiciona novo codigo, recebendo os parametros descritos.
 *                                Retorna 0 caso inclua com sucesso, -1 caso a memória do sistema esgote,
 *                                1 caso o codigo ja exista
 * 
 *
 */

public class Codigos {
    private static Codigo inicio_lista;
    private static Codigo fim_lista;

    public Codigos()
    {
            inicio_lista    = null;
            fim_lista       = null;
    }

    public static Codigo le_inicio()
    {
            return inicio_lista;
    }

    public static Codigo le_fim()
    {
            return fim_lista;
    }


    public static int conta_ocorrencias()
    {
            int qtd=0;
            //
            if ( ! lista_vazia() )
            {
                    Codigo aux = le_inicio();
                    //
                    do
                    {
                            qtd++;
                            aux = aux.getProximo();
                    } while ( aux != null );
            }
            return qtd;
    }

    public static boolean lista_vazia()
    {
            return (inicio_lista == null);
    }

    public static Codigo codigo_existe(String nome){
        if (!lista_vazia())
        {
            Codigo aux = le_inicio();
            //
            do
            {
                if(aux.getNome().equals(nome)){
                    return aux;
                }
                aux = aux.getProximo();
            } while ( aux != null );
        }
        return null;
    }
    
    public static Codigo[] codigo_contem(String padrao){
        if (!lista_vazia())
        {
            Pattern r = Pattern.compile(padrao, Pattern.CASE_INSENSITIVE);
            Codigo aux = le_inicio();
            Codigo[] encontrados = new Codigo[conta_ocorrencias()];
            int i = 0;
            //
            do
            {
                Matcher m = r.matcher(aux.getNome());
                if(m.find()){
                    encontrados[i] = aux;
                    i++;
                }
                aux = aux.getProximo();
            } while ( aux != null );
            if(i==0)
                return null;
            else
                return encontrados;
        }
        return null;
    }

    public static int inclui(String nome, String conteudo, String tipo, Usuario autor)
    {
            if ( codigo_existe(nome) != null )
            {
                    return 1;
            }
            try
            {
                Codigo novo = new Codigo(nome, conteudo, tipo, autor);
                if ( lista_vazia() )
                {
                    inicio_lista = novo;
                    fim_lista    = novo;
                }
                else
                {
                    fim_lista.setProximo(novo);
                    fim_lista = novo;
                }
                return 0;
            }
            catch (OutOfMemoryError erro)
            {
                    return -1;
            }
    }

}