#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function Avetor()

   /**
    Fun��es de Manipula��o de Arrays em ADVPL:
    
    AADD() - Permite a inser��o de um item em um array j� existente, adicionando ao final.
             Exemplo: AADD(aArray, valor)
             
    AINS() - Permite a inser��o de um elemento em qualquer posi��o espec�fica do array.
             Exemplo: AINS(aArray, nPosicao, valor)
             
    ACLONE() - Realiza a c�pia de um array para outro, incluindo os dados e a estrutura.
               Exemplo: aNovoArray := ACLONE(aArray)
               
    ADEL() - Permite a exclus�o de um elemento de um array, ajustando automaticamente o tamanho.
             Exemplo: ADEL(aArray, nPosicao)

    ALEN() - Retorna o n�mero de elementos (tamanho) do array.
             Exemplo: nTamanho := ALEN(aArray)
             
    ASIZE() - Redimensiona o tamanho de um array.
              Exemplo: ASIZE(aArray, nNovoTamanho)
              
    AINSROW() - Insere uma linha completa de dados em uma matriz (array bidimensional).
                Exemplo: AINSROW(aMatriz, nLinha, aNovaLinha)
                
    ADELROW() - Exclui uma linha completa de uma matriz (array bidimensional).
                Exemplo: ADELROW(aMatriz, nLinha)
                
    ACHOICE() - Exibe uma lista de op��es para o usu�rio e retorna o �ndice da op��o selecionada.
                Exemplo: nEscolha := ACHOICE(aOpcoes, "Escolha uma op��o")
                
    ASCAN() - Faz uma busca por um valor espec�fico dentro de um array e retorna sua posi��o.
              Exemplo: nPosicao := ASCAN(aArray, valor)
              
    ATAIL() - Retorna o �ltimo elemento do array.
              Exemplo: valor := ATAIL(aArray)

    AHEAD() - Retorna o primeiro elemento do array.
              Exemplo: valor := AHEAD(aArray)

    ADELALL() - Remove todos os elementos do array, esvaziando-o.
                Exemplo: ADELALL(aArray)
**/

    Local dData := Date()
    Local aValores := {"Maycon", dData, 100}
    Local var

    ACHOICE(aOpcoes, "Escolha uma op��o")

    For var := 1 To Len(aValores)
        Alert(aValores[var])
    Next

Return
