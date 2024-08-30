#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function Banco001()

    Local aArea := SB1->(GetArea())

    DBSelectArea("SB1")
    SB1->(DBSetOrder(1)) // Posiciona no indice 1
    SB1->(DbGoTop())

    if SB1->(dbSeek(FWXFilial("SB1")+ "000001"))
        Alert(SB1_> B1_DESC)
    endif

    RestArea(aArea)


Return
