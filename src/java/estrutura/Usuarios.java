package estrutura;
import java.util.regex.*;

/*
 * Implementacão de lista encadeada de usuarios
 * Todos os metodos sao estaticos, para que o sistema possa ter acesso
 * aos usuarios do sistema, como um banco de dados
 *
 *
 * METODOS:
 * le_inicio()                  - Retorna o primeiro usuario da lista
 * le_fim()                     - Retorna o ultimo usuario da lista
 * conta_ocorrencias()          - Retorna a quantidade de usuarios
 * lista_vazia()                - Retorna true caso não hajam usuarios
 * usuario_existe(String login) - Caso exista usuario com o login recebido, retorna-o, do contrario
 *                                retorna null
 * inclui(String nome, String login, String senha, String email)-
 *                              - Adiciona novo usuario, recebendo os parametros descritos.
 *                                Retorna 0 caso inclua com sucesso, -1 caso a memória do sistema esgote,
 *                                1 caso o usuario ja exista
 * 
 *
 */

public class Usuarios {
    private static Usuario inicio_lista;
    private static Usuario fim_lista;

    public Usuarios()
    {
            inicio_lista    = null;
            fim_lista       = null;
    }

    public static Usuario le_inicio()
    {
            return inicio_lista;
    }

    public static Usuario le_fim()
    {
            return fim_lista;
    }


    public static int conta_ocorrencias()
    {
            int qtd=0;
            //
            if ( ! lista_vazia() )
            {
                    Usuario aux = le_inicio();
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

    public static Usuario usuario_existe(String login){
        if (!lista_vazia())
        {
            Usuario aux = le_inicio();
            //
            do
            {
                if(aux.getLogin().equals(login)){
                    return aux;
                }
                aux = aux.getProximo();
            } while ( aux != null );
        }
        return null;
    }
    
    public static Usuario[] usuario_contem(String padrao){
        if (!lista_vazia())
        {
            Pattern r = Pattern.compile(padrao, Pattern.CASE_INSENSITIVE);
            Usuario aux = le_inicio();
            Usuario[] encontrados = new Usuario[conta_ocorrencias()];
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

    public static int inclui(String nome, String login, String senha, String email)
    {
            if ( usuario_existe(login) != null )
            {
                    return 1;
            }
            try
            {
                Usuario novo = new Usuario(nome, login, senha, email);
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