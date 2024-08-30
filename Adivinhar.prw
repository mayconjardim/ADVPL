#INCLUDE 'protheus.ch'

User Function Adivinhar()

    Local nNum := Randomize( 1, 100 ) 
    Local nChute := 0
    Local nErros := 0

    Alert(cValToChar(nNum))
    While (nChute != nNum)
        nChute := Val(FWInputBox("Digite um número [1 - 100]", ""))

        If nChute == nNum
            MsgInfo("Você Acertou - " + cValToChar(nChute) + CRLF + "ERROS: " + cValToChar(nErros), "Fim de jogo")
        ElseIf nChute > nNum
            nErros += 1
            MsgAlert("Digite um valor mais Baixo!", "Tente Novamente")
        Else
            nErros += 1
            MsgAlert("Digite um valor mais Alto!", "Tente Novamente")
        EndIf
    End

Return
