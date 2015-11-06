package estrutura;

/*
 * Implementacão de lista encadeada de mensagens
 * Cada usuario tem uma dessas como atributo, contendo
 * todas as mensagens recebidas por esse usuario
 *
 *
 * METODOS:
 * le_inicio()            - Retorna a primeira mensagem da lista
 * le_fim()               - Retorna a ultima mensagem da lista
 * conta_ocorrencias()    - Retorna a quantidade de mensagens
 * lista_vazia()          - Retorna true caso não hajam mensagens
 * inclui(Usuario remetente, Usuario destinatario, String conteudo)-
 *                        - Adiciona nova mensagem, recebendo os parametros descritos.
 *                          Retorna 0 caso inclua com sucesso, -1 caso a memória do sistema esgote
 * busca_mensagem(int id) - Procura a mensagem que tem o id igual ao recebido como argumento
 *                          e a retorna, ou retorna null caso nao exista mensagem com esse id.
 * 
 *
 */

public class Mensagens {
    private Mensagem inicio_lista;
    private Mensagem fim_lista;

    public Mensagens()
    {
            inicio_lista    = null;
            fim_lista       = null;
    }

    public Mensagem le_inicio()
    {
            return inicio_lista;
    }

    public Mensagem le_fim()
    {
            return fim_lista;
    }


    public int conta_ocorrencias()
    {
            int qtd=0;
            //
            if ( ! lista_vazia() )
            {
                    Mensagem aux = le_inicio();
                    //
                    do
                    {
                            qtd++;
                            aux = aux.getProxima();
                    } while ( aux != null );
            }
            return qtd;
    }

    public boolean lista_vazia()
    {
            return (inicio_lista == null);
    }

    public int inclui(Usuario remetente, Usuario destinatario, String assunto, String conteudo)
    {
            try
            {
                int id = conta_ocorrencias();
                Mensagem nova = new Mensagem(remetente, destinatario, assunto, conteudo, id);
                if ( lista_vazia() )
                {
                    inicio_lista = nova;
                    fim_lista    = nova;
                }
                else
                {
                    fim_lista.setProxima(nova);
                    fim_lista = nova;
                }
                return 0;
            }
            catch (OutOfMemoryError erro)
            {
                    return -1;
            }
    }

    public Mensagem busca_mensagem(int id){
        if (!lista_vazia())
        {
            Mensagem aux = le_inicio();
            //
            do
            {
                if(aux.getId() == id){
                    return aux;
                }
                aux = aux.getProxima();
            } while ( aux != null );
        }
        return null;
    }
    
}