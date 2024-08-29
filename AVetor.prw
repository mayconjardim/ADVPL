#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function Avetor()

   /**
    Funções de Manipulação de Arrays em ADVPL:
    
    AADD() - Permite a inserção de um item em um array já existente, adicionando ao final.
             Exemplo: AADD(aArray, valor)
             
    AINS() - Permite a inserção de um elemento em qualquer posição específica do array.
             Exemplo: AINS(aArray, nPosicao, valor)
             
    ACLONE() - Realiza a cópia de um array para outro, incluindo os dados e a estrutura.
               Exemplo: aNovoArray := ACLONE(aArray)
               
    ADEL() - Permite a exclusão de um elemento de um array, ajustando automaticamente o tamanho.
             Exemplo: ADEL(aArray, nPosicao)

    ALEN() - Retorna o número de elementos (tamanho) do array.
             Exemplo: nTamanho := ALEN(aArray)
             
    ASIZE() - Redimensiona o tamanho de um array.
              Exemplo: ASIZE(aArray, nNovoTamanho)
              
    AINSROW() - Insere uma linha completa de dados em uma matriz (array bidimensional).
                Exemplo: AINSROW(aMatriz, nLinha, aNovaLinha)
                
    ADELROW() - Exclui uma linha completa de uma matriz (array bidimensional).
                Exemplo: ADELROW(aMatriz, nLinha)
                
    ACHOICE() - Exibe uma lista de opções para o usuário e retorna o índice da opção selecionada.
                Exemplo: nEscolha := ACHOICE(aOpcoes, "Escolha uma opção")
                
    ASCAN() - Faz uma busca por um valor específico dentro de um array e retorna sua posição.
              Exemplo: nPosicao := ASCAN(aArray, valor)
              
    ATAIL() - Retorna o último elemento do array.
              Exemplo: valor := ATAIL(aArray)

    AHEAD() - Retorna o primeiro elemento do array.
              Exemplo: valor := AHEAD(aArray)

    ADELALL() - Remove todos os elementos do array, esvaziando-o.
                Exemplo: ADELALL(aArray)
**/

    Local dData := Date()
    Local aValores := {"Maycon", dData, 100}
    Local var

    ACHOICE(aOpcoes, "Escolha uma opção")

    For var := 1 To Len(aValores)
        Alert(aValores[var])
    Next

Return
