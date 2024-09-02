#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function Banco004()

    Local aArea := SB1->(GetArea())

    DBSelectArea('SB1')
    Sb1->(DBSetOrder(1))
    Sb1->(DBGoTop())

    // Iniciar a transa��o
    Begin Transaction 

        MsgInfo("A descri��o do produto ser� alterada", "Aten��o")

        if SB1->(DBSeek(FWxFilial('SB1') + '233'))
            RecLock('SB1', .F.) //Trava registro para altera��o

            Replace B1_DESC With "MONITOR HP E24MV MAYCON 23,8"

            SB1->(MsUnlock())
        endif

        MsgAlert("Altera��o efetuada", "Aten��o")
    
    End Transaction
    RestArea(aArea)

Return
