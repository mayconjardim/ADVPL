#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function Banco004()

    Local aArea := SB1->(GetArea())

    DBSelectArea('SB1')
    Sb1->(DBSetOrder(1))
    Sb1->(DBGoTop())

    // Iniciar a transação
    Begin Transaction 

        MsgInfo("A descrição do produto será alterada", "Atenção")

        if SB1->(DBSeek(FWxFilial('SB1') + '233'))
            RecLock('SB1', .F.) //Trava registro para alteração

            Replace B1_DESC With "MONITOR HP E24MV MAYCON 23,8"

            SB1->(MsUnlock())
        endif

        MsgAlert("Alteração efetuada", "Atenção")
    
    End Transaction
    RestArea(aArea)

Return
